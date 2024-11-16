// Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.

// Assume the environment does not allow you to store 64-bit integers (signed or unsigned).

 

// Example 1:

// Input: x = 123
// Output: 321
// Example 2:

// Input: x = -123
// Output: -321
// Example 3:

// Input: x = 120
// Output: 21

import 'dart:math';

void main() {
  final Solution solution = Solution();
  print(solution.reverse(-120));

}

class Solution {
  int reverse(int x) {
    bool isNegative =false;
    String reversed  = x.toString().split('').reversed.join();
    if(reversed.contains('-')){
      isNegative=true;
    }
  
   int  reversedInt = int.parse(x.toString().split('').reversed.join().replaceAll('-', ''));
    if(reversedInt<(pow(-2, 31)).toInt()|| reversedInt>(pow(2, 31)-1).toInt()){
      return 0;
    }
    return isNegative? -reversedInt:reversedInt;
  }
}