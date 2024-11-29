//Given the head of a linked list, 
//remove the nth node from the end of the list and return its head.


// Input: head = [1,2,3,4,5], n = 2
// Output: [1,2,3,5]
// Example 2:

// Input: head = [1], n = 1
// Output: []
// Example 3:

// Input: head = [1,2], n = 1
// Output: [1]


 
 
import '_list_node.dart';
    
void main() {
  final Solution solution = Solution();
  print(
    solution.removeNthFromEnd( ListNode(1,ListNode(2,ListNode(3,ListNode(4,ListNode(5))))),2)
    );

}

class Solution {
  ListNode? removeNthFromEnd(ListNode? head, int n) {
    
   ListNode? dummy= ListNode(0,head) ;
  
    ListNode? fast = dummy;
    ListNode? slow = dummy;
    int count =0;


while(fast!=null){
  if(count>n){
    slow =slow?.next;
  }
  fast= fast.next;
  count++;
}
slow?.next=slow.next?.next;
return dummy.next;  
  }
}
// dummy =0
// fast null,  iteration 6
// slow =4,
// count =6,
  // while 0
   
