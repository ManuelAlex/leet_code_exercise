// Input: height = [1,8,6,2,5,4,8,3,7]
// Output: 49
// Explanation: The above vertical lines are represented by array [1,8,6,2,5,4,8,3,7]. In this case, the max area of water (blue section) the container can contain is 49.


import 'dart:math';

void main() {
  final Solution solution = Solution();
  print(solution.maxArea([8,7,2,1]));

}
class Solution {
  int maxArea(List<int> height) {
    int left=0,right=height.length-1;
    int maxArea =0;

    while(left<right){
      int length = min(height[left], height[right]);
      int width =right-left;
     int area = length*width;
      maxArea=max(maxArea,area ); 
     
   if(height[left] < height[right]){
    left++;
   }else{
    right--;
   }
     
    }
    return maxArea;
  }
}