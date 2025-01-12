import 'dart:math';

void main() {
  final Solution solution = Solution();
  // print(solution.posRMSt(10));
  //print(solution.posRMStOptimed(10));
  //print(solution.countRightMostSetBit(42));
  print(solution.checkIfNisAPowOf2(4));
}

class Solution {
  ///Postion of right most set bit
  ///That is the bit where the first bit is ON (1)
  /// O(logN)
  int posRMSt(int n) {
    int pos = 0;
    int mask = 1;
    if (n == 0) {
      //0 will never give the right ost set bit
      return -1;
    }
    while (n & mask == 0) {
      mask = mask << 1;
      pos++;
    }
    return pos + 1;
  }

  //using constant time
  int posRMStOptimed(int n) {
    // we need a mask that returns that helps to return the position
    int mask = n & n - 1;
    int value = n ^ mask; //
    // 8=2pow3
    int pos = ((log(value) / log(2)).floor()) + 1;
    return pos;
  }

  int countRightMostSetBit(int n) {
    int count = 0;
    while (n != 0) {
      n = n & n - 1;

      count++;
    }
    return count;
  }

  bool checkIfNisAPowOf2(int n) {
    return n == 0 ? false : n & (n - 1) == 0;
  }
}
