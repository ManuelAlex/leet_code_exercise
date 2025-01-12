void main() {
  final Solution solution = Solution();
  print(solution.isPalindrome(1011101));
}

class Solution {
  bool isPalindrome(int x) {
    final xStr = '$x';
    bool isPalindrome = false;
    for (int i = 0; i < xStr.length ~/ 2; i++) {
      String first = xStr[i];
      String last = xStr[(xStr.length - 1) - i];
      isPalindrome = first == last;
    }

    return isPalindrome;
  }
}
