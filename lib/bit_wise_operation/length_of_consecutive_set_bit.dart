void main() {
  final Solution solution = Solution();

  print(solution.lenOfConsSetBit(101));
}

class Solution {
  int lenOfConsSetBit(int n) {
    if (n == 0) {
      return 0;
    }
    int length = 1;
    while (n > 0) {
      if (n & n - 1 == 0) {
        length += 1; //increament
      } else {
        length = 1; //reset
      }
      n >>= 1; // Right shift to process the next bit
    }
    return length;
  }
}
