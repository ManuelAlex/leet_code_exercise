// . Longest Substring Without Repeating Characters
// Medium

// 40500

// 1951

// Add to List

// Share
// Given a string s, find the length of the longest substring without repeating characters.

 

// Example 1:

// Input: s = "abcabcbb"
// Output: 3
// Explanation: The answer is "abc", with the length of 3.
// Example 2:

// Input: s = "bbbbb"
// Output: 1
// Explanation: The answer is "b", with the length of 1.
// Example 3:

// Input: s = "pwwkew"
// Output: 3
// Explanation: The answer is "wke", with the length of 3.
// Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.



void main() {
  final Solution solution = Solution();
  print(solution.lengthOfLongestSubstring('pwwkew'));

}
class Solution {
  int lengthOfLongestSubstring(String s) {
    int left = 0;
    int longest = 0;
    final Set<String> charSet = <String>{};
    
    for (int right = 0; right < s.length; right++) {
      String currentChar = s[right];
      
      // Slide window by moving left until no duplicate
      while (charSet.contains(currentChar)) {
        charSet.remove(s[left]);
        left += 1;
      }
      charSet.add(currentChar);
      final int window = (right - left) + 1;
      longest = window > longest ? window : longest;
    }
    return longest;
  }
}
