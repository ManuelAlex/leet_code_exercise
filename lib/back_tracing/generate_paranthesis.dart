// Given n pairs of parentheses, write a function to generate all combinations of well-formed parentheses.

 

// Example 1:

// Input: n = 3
// Output: ["((()))","(()())","(())()","()(())","()()()"]
// Example 2:

// Input: n = 1
// Output: ["()"]
void main() {
  final Solution solution = Solution();
  print(solution.generateParenthesis(3
  ));

}
class Solution {
  List<String> generateParenthesis(int n) {
    List<String> validParenthesisList=<String>[];
    const String open ='(';
     const String closed =')';

 List<String> paramBuilder=<String>[];
  void  validParenthesis (int openN,int closedN){
    //open<=n
    //closed < open
    // valid if closed == open == n
      if(closedN==openN&&closedN==n){
        validParenthesisList.add(paramBuilder.join());
        return;
      }else{


         if(openN<=n){
          paramBuilder.add(open);
          validParenthesis(openN+1, closedN);
          paramBuilder.removeLast();
         }

      if(closedN<openN){
        paramBuilder.add(closed);
        
          validParenthesis(openN, closedN+1);
          paramBuilder.removeLast();

      }

      }
     
  }
validParenthesis(0, 0);
return validParenthesisList;
  }
}