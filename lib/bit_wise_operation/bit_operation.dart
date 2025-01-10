void main() {
  final Solution solution = Solution();
  print(solution.or(5, 9));
  print(solution.and(5, 9));
  print(solution.xor(5, 9));
  print(solution.leftShift(-5, 1));
  print(solution.signedRightShift(-5, 1));
  print(solution.unSignedRightShift(-5, 1));
}

class Solution {
  int or(
    int a,
    int b,
  ) {
    return a | b;
  }

  int and(
    int a,
    int b,
  ) {
    return a & b;
  }

  int xor(
    int a,
    int b,
  ) {
    return a ^ b;
  }

  int leftShift(int a, int place // the extent to be shifted
      ) {
    return a << place;
  }

// uses msb as filler
  int signedRightShift(int a, int place // the extent to be shifted
      ) {
    return a >> place;
  }
// unsigned , Tripple or logical right shift
//  doesn't use the msb instead uses 0 as it fillers
// meaning no difference in positive numbers

  int unSignedRightShift(int a, int place // the extent to be shifted
      ) {
    return a >>> place;
  }

  //
  //Negation operator, flips the bits value ,just like taking a 1's complement
  int negate(int a) {
    return ~a;
  }
}
