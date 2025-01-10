import 'dart:math' as math;

void main() {
  final Solution solution = Solution();
  print(solution.binaryToDigit(11111111));
}

class Solution {
  int binaryToDigit(int binary) {
    int pow = 0;
    int digit = 0;

    while (binary > 0) {
      int base = binary % 10;
      digit += (base * math.pow(2, pow)).toInt();
      binary = binary ~/ 10;
      pow++;
    }

    return digit;
  }
}
