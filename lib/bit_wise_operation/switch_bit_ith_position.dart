void main() {
  final Solution solution = Solution();
  print(solution.swithOnIthPosition(36, 3));
  print(solution.swithOffIthPosition(36, 5));
  print(solution.checkIthOnAndOffState(36, 5));
}

class Solution {
  //switch on the ith position

  int swithOnIthPosition(int n, int i) {
    // OR uses 0 that has no effect because 0|0=0 in the truth table
    final int mask = 1 << i;
    //using  | operator
    return n | mask;
  }
  //switch on the ith position

  int swithOffIthPosition(int n, int i) {
    // And uses 1 that has no effect because 1&1=1 in the truth table

    // eg n =36= 00100100
    final int mask = ~(1 << i);
    // if i =5 i<<5 = 00100000
    // mask = negate ~00100000=11011111
    //using  & operator
    return n & mask;
    //00100100 |11011111=00000100 = 4
  }
  //switch on the ith position

  int toggleIthPosition(int n, int i) {
    // XOR return 0 when the bits are thesame in the truth table
    final int mask = 1 << i;
    //using  | operator
    return n ^ mask;
  }

  String checkIthOnAndOffState(int n, int i) {
    // eg as observed in 00100100 ,the 5th bit is on,
    //using & on the mask will make it 1 on the 5th position and off on the 4th
    final int mask = 1 << i;
    //using  | operator
    return n & mask == 0 ? 'Off' : 'On';
  }
}
