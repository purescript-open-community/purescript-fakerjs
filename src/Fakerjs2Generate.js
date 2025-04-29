// dynamicLoader.mjs
export async function loadPathDefaultImpl(path) {
  const module = await import(path);
  return module.default;
}
