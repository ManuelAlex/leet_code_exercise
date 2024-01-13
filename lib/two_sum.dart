// Given an integer x, return true if x is a palindrome, and false otherwise.

 

// Example 1:

// Input: x = 121
// Output: true
// Explanation: 121 reads as 121 from left to right and from right to left.
// Example 2:

// Input: x = -121
// Output: false
// Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
// Example 3:

// Input: x = 10
// Output: false
// Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
 

// Constraints:

// -231 <= x <= 231 - 1
 

// Follow up: Could you solve it without converting the integer to a string?
void main() {
  final Solution solution = Solution();
  print(solution.isPalindrome(1001));

}

class Solution {
  bool isPalindrome(int x) {
    final String xString = x.toString();
    final List<String> xStringList = xString.split('');
    if(xStringList.length.isEven){
      if (xStringList.take(xStringList.length~/2).toString()==xStringList.skip(xStringList.length~/2).toString()){
        return true;
      }
      return false;
    }else{
         final int intersect =( xStringList.length)~/2;
  final List<String> leftHalfOfxStringList = xStringList.take(intersect).toList();
 
  final List<String> rightHalfOfxStringList = xStringList.skip(intersect+1).toList();
  if(leftHalfOfxStringList.toString()==rightHalfOfxStringList.toString()){
    return true;
  }
   return false;
    }    
  }
}