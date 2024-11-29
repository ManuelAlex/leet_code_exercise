

import '_list_node.dart';

void main() {
  final Solution solution = Solution();
  print(solution.addTwoNumbers(ListNode(1,ListNode(1,ListNode(1))), ListNode(5,ListNode(6,ListNode(4)))));

}


class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    ListNode dummy = ListNode(); 
    ListNode? cur = dummy; 
    int carry = 0;

 
    while (l1 != null || l2 != null || carry != 0) {
      int valL1 = l1?.val ?? 0; 
      int valL2 = l2?.val ?? 0; 
      int val = valL1 + valL2 + carry;

      carry = val ~/ 10; 
      val = val % 10; 

      cur?.next = ListNode(val); 
      cur = cur?.next ;

    
      l1 = l1?.next;
      l2 = l2?.next;
      
    }

    return dummy.next; 
  }
}