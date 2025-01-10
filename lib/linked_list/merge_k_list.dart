// You are given an array of k linked-lists lists, each linked-list is sorted in ascending order.

// Merge all the linked-lists into one sorted linked-list and return it.

// Example 1:

// Input: lists = [[1,4,5],[1,3,4],[2,6]]
// Output: [1,1,2,3,4,4,5,6]
// Explanation: The linked-lists are:
// [
//   1->4->5,
//   1->3->4,
//   2->6
// ]
// merging them into one sorted list:
// 1->1->2->3->4->4->5->6
// Example 2:

// Input: lists = []
// Output: []
// Example 3:

// Input: lists = [[]]
// Output: []

import '_list_node.dart';
void main() {
  final Solution solution = Solution();
print(
    solution.mergeKLists([
    ListNode(1,ListNode(4,ListNode(5))),
    ListNode(1,ListNode(3,ListNode(4))),
    ListNode(2,ListNode(6,)),
  ])
)
  ;

}
class Solution {
  ListNode? mergeKLists(List<ListNode?> lists) {
    // not efficient approach 
    // space complexity o(n)
    // time complexity o(n^2)
    final List<int> stack =[];
    for(int i=0;i<lists.length;i++){
       ListNode? currentNode = lists[i];
      while(currentNode!=null){
         stack.add(currentNode.val);
         currentNode=currentNode.next;
      }
    }
    stack.sort();  
      ListNode? dummy = ListNode();  
      ListNode? tail = dummy;
      for(int val in stack){
        tail?.next =ListNode(val);
        tail = tail?.next;
      }
  return dummy.next;
  }
}