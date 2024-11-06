// Write a function that takes the binary representation of a positive integer and
// returns the number of set bits it has (also known as the Hamming weight).
// Example 1:

// Input: n = 11

// 1011

// Output: 3

// Explanation:

// The input binary string 1011 has a total of three set bits.

void main(){
print(Solution().hammingWeight(11));
}

int toBinary(int number) {
  String numberStr = '';

  if (number < 2) {
    numberStr = '$number';
  } else {
    int quotient = number ~/ 2;
    int remainder = number % 2;
    numberStr = (toBinary(quotient).toString() + remainder.toString());
  }
  
  return int.parse(numberStr);
}

class Solution {
  int hammingWeight(int n) {
    int count = 0;

    if (n < 2) {
      // Base case: if n is 1, it has 1 set bit; if n is 0, it has 0 set bits.
      return n;
    } else {
      int quotient = n ~/ 2;
      int remainder = n % 2;

      // Count the remainder (1 if remainder is 1, otherwise 0)
      count = remainder;

      // Recursively count the set bits in the quotient and add the remainder
      count += hammingWeight(quotient);
    }

    return count;
  }
}