void main() {
  final Solution solution = Solution();

  print(solution.lonelyInteger([5, 1, 4, 4, 3, 5, 1]));
}

class Solution {
  // /// nlogn
  // int lonelyInteger(List<int> integers) {
  //   // Sort the list
  //   integers.sort();

  //   // Traverse the list in steps of 2
  //   for (int i = 0; i < integers.length - 1; i += 2) {
  //     int item = integers[i];
  //     int nextItem = integers[i + 1];

  //     // If the current item is not equal to the next, return the current item
  //     if (item != nextItem) {
  //       return item;
  //     }
  //   }

  //   // If no mismatch was found, return the last item
  //   return integers[integers.length - 1];
  // }

  // /// O(n)+ additional memory
  // int lonelyInteger(List<int> integers) {
  //   final Set<int> uniqueItems = <int>{};
  //   for (int i = 0; i < integers.length; i++) {
  //     final int currentItem = integers[i];
  //     if (uniqueItems.contains(currentItem)) {
  //       uniqueItems.remove(currentItem);
  //     } else {
  //       uniqueItems.add(currentItem);
  //     }
  //   }
  //   return uniqueItems.first;
  // }
  /// using bitwise operator  O(n)
  /// 5^5 =0
  /// XOR has cummutative property  5^5^6=6,6^5^5=0;
  int lonelyInteger(List<int> integers) {
    return integers.reduce((value, element) => value ^ element);
  }
}
