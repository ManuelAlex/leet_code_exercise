void main() {
  final Solution solution = Solution();
  print(solution.isPalindrome(1001));

}

class Solution {
  bool isPalindrome(int x) {
    final String xString = x.toString();
    final List<String> xStringList = xString.split('');
    if(xStringList.length.isEven){
      if (xStringList.take(xStringList.length~/2).toString()==xStringList.skip(xStringList.length~/2).toString()){
        return true;
      }
      return false;
    }else{
         final int intersect =( xStringList.length)~/2;
  final List<String> leftHalfOfxStringList = xStringList.take(intersect).toList();
 
  final List<String> rightHalfOfxStringList = xStringList.skip(intersect+1).toList();
  if(leftHalfOfxStringList.toString()==rightHalfOfxStringList.toString()){
    return true;
  }
   return false;
    }    
  }
}