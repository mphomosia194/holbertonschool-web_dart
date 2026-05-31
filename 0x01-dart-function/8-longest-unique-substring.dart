String longestUniqueSubstring(String str) {
  int start = 0;
  int maxLength = 0;
  int maxStart = 0;
  Map<String, int> seen = {};

  for (int end = 0; end < str.length; end++) {
    if (seen.containsKey(str[end]) && seen[str[end]]! >= start) {
      start = seen[str[end]]! + 1;
    }

    seen[str[end]] = end;

    if (end - start + 1 > maxLength) {
      maxLength = end - start + 1;
      maxStart = start;
    }
  }

  return str.substring(maxStart, maxStart + maxLength);
}
