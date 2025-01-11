void main() {
  final Solution solution = Solution();
  print(solution.digitToBinary(10));
}

// class Solution {
//   int digitToBinary(int digit) {
//     int remainder = 0;
//     String base2String = '';
//     while (digit > 0) {
//       digit = digit ~/ 2;
//       remainder = digit % 2;
//       base2String = remainder.toString() + base2String;
//     }
//     return int.parse(base2String);
//   }
// }
//Optimized
class Solution {
  int digitToBinary(int digit) {
    int binary = 0;
    int place = 1;

    while (digit > 0) {
      int remainder = digit % 2;
      binary += remainder * place;
      place *= 10;
      digit ~/= 2;
    }
    return binary;
  }
}
