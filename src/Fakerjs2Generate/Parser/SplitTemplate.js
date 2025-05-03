/**
* Implementation of the splitTemplateCallsImpl function for PureScript FFI
*
* @param {Function} left - Left constructor for regular text
* @param {Function} right - Right constructor for template calls
* @param {String} input - Input string to split
* @return {Array} - Non-empty array of Either left (text) or right (template calls)
*/
export function splitTemplateCallsImpl(left, right, input) {
  const result = [];
  let startIndex = 0;

  // Helper function to find complete template pairs
  function findCompletePair(from) {
    const openIndex = input.indexOf("{{", from);
    if (openIndex === -1) return null;

    const closeIndex = input.indexOf("}}", openIndex);
    if (closeIndex === -1) return null;

    return { open: openIndex, close: closeIndex };
  }

  let pair;
  while ((pair = findCompletePair(startIndex)) !== null) {
    // Add text before the template if any exists
    if (pair.open > startIndex) {
      result.push(left(input.substring(startIndex, pair.open)));
    }

    // Add the template content
    const templateContent = input.substring(pair.open + 2, pair.close);
    result.push(right(templateContent));

    // Move past this template
    startIndex = pair.close + 2;
  }

  // Add any remaining text
  if (startIndex < input.length) {
    result.push(left(input.substring(startIndex)));
  }

  // Ensure we always return at least one item
  if (result.length === 0) {
    result.push(left(input));
  }

  return result;
}
