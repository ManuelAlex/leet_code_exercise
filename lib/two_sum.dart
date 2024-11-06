// Given an integer x, return true if x is a palindrome, and false otherwise.

 

// Example 1:

// Input: x = 121
// Output: true
// Explanation: 121 reads as 121 from left to right and from right to left.
// Example 2:

// Input: x = -121
// Output: false
// Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
// Example 3:

// Input: x = 10
// Output: false
// Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
 

// Constraints:

// -231 <= x <= 231 - 1
 

// Follow up: Could you solve it without converting the integer to a string?
void main() {
  final Solution solution = Solution();
  print(solution.twoSum([3,2,4,5],9));

}

class Solution {
  List<int> twoSum(List<int> nums, int target) {
 
 //loop tru all the list and add the num with others 
 
//  for(int i=0;i<nums.length;i++){
//   final resolvedList= nums.sublist(i+1,)+nums.sublist(0,i);

//   for(int j=0;j<resolvedList.length;j++){
  
//     if(nums[i]+resolvedList[j] ==target){
//     //int resolvedIndex = nums.indexOf(resolvedList[j]);
//       int resolvedIndex = (j + i + 1) % nums.length;
      
//       return [i,resolvedIndex];
//     }
//   }
//  }

//  for(var i=0; i<nums.length;i++){
//     print('i is ${nums[i]}' );
//       print('=======');
//         for(var j=i+1;j<nums.length;j++){
        
         
//           print(nums[j]);
//         }
//       }
//  return [];
//   }

final Map<int,int> map= <int,int> {};
 for(int i=0;i<nums.length;i++){
  int diff = target-nums[i];
  if(map.containsKey(diff)){
    return [map[diff]!,i];
  }
  map[nums[i]]=i;

 }
 return [];
  }
}