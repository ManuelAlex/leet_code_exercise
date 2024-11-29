// Example 1:

// Input: s = "babad"
// Output: "bab"
// Explanation: "aba" is also a valid answer.
void main() {
  final Solution solution = Solution();
  print(solution.longestPalindrome("pwwkew"));

}
class Solution {
  String longestPalindrome(String s) {
     String palindrome(String s) {
  int left = 0;
  int right = s.length - 1;
  
  while (left < right) {
    if (s[left] != s[right]) {
      return '';  
    }
    left++;
    right--;
  }
  
  return s;  
}

String sLongestPalindrome ='';


 // Iterate through all possible substrings
    for (int i = 0; i < s.length; i++) {
      for (int j = i + 1; j <= s.length; j++) {
        String currentSubstring = s.substring(i, j);
        String possiblePalindrome = palindrome(currentSubstring);
        
        // Update sLongestPalindrome if we find a longer palindrome
        if (possiblePalindrome.length > sLongestPalindrome.length) {
          sLongestPalindrome = possiblePalindrome;
        }
      }
    }
   return  sLongestPalindrome;
  }
}