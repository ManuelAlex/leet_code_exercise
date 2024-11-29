 //Definition for singly-linked list.
class ListNode {
  int val;
  ListNode? next;

  ListNode([this.val = 0, this.next]);

  @override
  String toString() {
    
    final StringBuffer buffer = StringBuffer();
    ListNode? currentNode = this;

    
    while (currentNode != null) {
      buffer.write('${currentNode.val}');
      if (currentNode.next != null) {
        buffer.write(' -> ');
      }
      currentNode = currentNode.next;
    }

    return buffer.toString();
  }
}