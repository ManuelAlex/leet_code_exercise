// Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

// An input string is valid if:

// Open brackets must be closed by the same type of brackets.
// Open brackets must be closed in the correct order.
// Every close bracket has a corresponding open bracket of the same type.
 

// Example 1:

// Input: s = "()"

// Output: true

// Example 2:

// Input: s = "()[]{}"

// Output: true

// Example 3:

// Input: s = "(]"

// Output: false

// Example 4:

// Input: s = "([])"

// Output: true
void main(){
print(Solution().isValid("()[]{}"));
}

class Solution {
  bool isValid(String s) {
 
    const Map<String,String> stringMap=<String,String>{
      '(': ')',
      '{': '}',
      '[' : ']'

    };
    
    List<String> stringStack = <String>[];

    for(int i =0; i<s.length;i++){
      String currentSrring = s[i];
     if(stringMap.containsKey(currentSrring)){
      //is an opening  remove from stack
      stringStack.add(currentSrring);

     }else{
      // it is a closing closing
      // checks
      if(stringStack.isEmpty||stringMap[stringStack.last]!=currentSrring){
        return false;

      }  
      stringStack.removeLast();
     }
    }
    return stringStack.isEmpty;   
  }
}

//[()]