void main() {
  final Solution solution = Solution();
  print(solution.lengthOfLongestSubstring("pwwkew"));

}

class Solution {
  //use sliding window pricipal
  int lengthOfLongestSubstring(String s) {
    int left =0,length =0;
    Set set =<String>{};
    for(int right=0;right<s.length;right++){
      while(set.contains(s[right])){
        set.remove(s[left]);
        left+=1;
       
      }
    set.add(s[right]);
    int window =(right-left)+1;
    length=window>length?window:length;

    }
    return length;
  }
}