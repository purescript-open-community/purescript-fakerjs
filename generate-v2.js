// import fg from 'fast-glob';
// import { pascalCase } from 'change-case';
// import { promises as fs } from 'fs';
// import path from 'path';

var { default: fg } = await import("fast-glob");
var { pascalCase } = await import("change-case");
var { promises: fsPromises, default: fs } = await import("fs");
var { default: path } = await import("path");

var inputDir = '/home/srghma/projects/faker/src/locales';
var outputDir = '/home/srghma/projects/purescript-fakerjs/src/Fakerjs2/Locales';

// Find all .ts files except index.ts and metadata.ts
var entries = await fg('**/*.ts', {
  cwd: inputDir,
  ignore: ['**/index.ts', '**/metadata.ts'],
});


var uniq = xs => [...new Set(xs)].sort()
var x = uniq(entries.map(x => x.split('/').slice(1).join('/')))

var entries_ = await Promise.all(entries.map(async x => {
  let o = null
  const p = inputDir + '/' + x
  try { o = (await import(p)).default } catch (e) { console.error(e) }
  const [lang, ...path] = x.split('/')
  return [lang, path, o]
}))

entries_
// {
//   "cell_phone/formats.ts": {
//     "af_ZA": [
// x = Object.groupBy(entries_, x => x[0].split('/').slice(1).join('/'))
// x = Object.fromEntries(Object.entries(x).map(([k, v]) => [k, Object.fromEntries(v.map(([k, v]) => [k.split('/')[0], v]))]));


var mapVals = (x, f) => Object.fromEntries(Object.entries(x).map(([k, v]) => [k, f(v)]))

x = Object.groupBy(entries_, x => x[1].join('/'))
x = mapVals(x, v => v.map(x => x[2]))
x = mapVals(x, v => uniq(v.flat()))

var outputPath = path.join('/home/srghma/projects/purescript-fakerjs/src/Fakerjs2Generate/', 'JavascriptCodecs.purs');
fs.writeFileSync(outputPath, JSON.stringify(x, null, 2), 'utf8');
console.log(`JSON written to ${outputPath}`);

// Step 1: Build a naive tree (pure objects with `true`)
const tree = {};
for (const filepath of entries) {
  const parts = filepath.split(path.sep);
  const filename = path.basename(parts.pop(), '.ts');
  const pathParts = parts;
  setDeep(tree, [...pathParts, filename], true);
}

function setDeep(obj, parts, value) {
  const last = parts.pop();
  let curr = obj;
  for (const part of parts) {
    curr[part] = curr[part] || {};
    curr = curr[part];
  }
  curr[last] = value;
}

// Step 2: Postprocess tree into "smart" format (arrays for leaves)
function postprocess(node) {
  if (typeof node !== 'object' || node === null) {
    return node;
  }

  const entries = Object.entries(node);
  const onlyFiles = entries.every(([, value]) => value === true);

  if (onlyFiles) {
    return entries.map(([name]) => name); // convert into array
  }

  const result = {};
  for (const [key, value] of entries) {
    result[key] = postprocess(value);
  }
  return result;
}

const smartTree = postprocess(tree);

// Done! Now smartTree looks like you want:
// folders -> { folders or arrays of files }

console.dir(smartTree, { depth: null });

await walkAndGenerate(tree, []);

await Promise.all(
  Object.entries(filesByDir).map(async ([dir, files]) => {
    var moduleName = dir.split(path.sep).map(pascalCase).join('.');
    var targetDir = path.join(outputDir, dir);
    var baseName = pascalCase(path.basename(dir));

    var pursFilePath = path.join(outputDir, `${dir}.purs`);
    var jsFilePath = path.join(outputDir, `${dir}.js`);

    // Prepare contents
    var pursLines = [
      `module Fakerjs2.Locales.${moduleName} where`,
      '',
      '-- This file was generated by a script',
      'import Prelude',
      'import Fakerjs2.Types',
      '',
      ...files.map(file => `foreign import ${file} :: ${pascalCase(file.replace(/_/g, ' ')).replace(/\s+/g, '')}`),
    ];

    var jsLines = files.map(file =>
      `export { default as ${file} } from '...'`
    );

    // Ensure directory exists
    await fs.mkdir(path.dirname(pursFilePath), { recursive: true });
    await fs.mkdir(path.dirname(jsFilePath), { recursive: true });

    // Write files
    await Promise.all([
      fs.writeFile(pursFilePath, pursLines.join('\n') + '\n'),
      fs.writeFile(jsFilePath, jsLines.join('\n') + '\n'),
    ]);
  })
);
