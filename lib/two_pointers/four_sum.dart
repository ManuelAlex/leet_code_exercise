// Given an array nums of n integers,
// return an array of all the unique quadruplets 
// [nums[a], nums[b], nums[c], nums[d]] such that:

// 0 <= a, b, c, d < n
// a, b, c, and d are distinct.
// nums[a] + nums[b] + nums[c] + nums[d] == target
// Input: nums = [1,0,-1,0,-2,2], target = 0
// Output: [[-2,-1,1,2],[-2,0,0,2],[-1,0,0,1]]
// Example 2:

// Input: nums = [2,2,2,2,2], target = 8
// Output: [[2,2,2,2]]

void main() {
  final Solution solution = Solution();
  print(solution.fourSum([1,0,-1,0,-2,2], 0));

}
class Solution {
  List<List<int>> fourSum(List<int> nums, int target) {
    
  final  List<List<int>>  resultList =<List<int>>[];
  nums.sort();
  for(int i =0;i<nums.length-3; i++){// leave room for at least 3 element j, h and l
    //check for duplicates
    if(i>0&&nums[i]==nums[i-1]){
      continue;
    }
    for(int j=i+1;j<nums.length-2;j++){// leave room for at least 2 element  h and l
       if(j>i+1&&nums[j]==nums[j-1]){
      continue;
    }
      // using two pointers
      int l=j+1,h=nums.length-1;
      while(l<h){
        int fourSum = nums[i]+nums[j]+nums[l]+nums[h];
        if(fourSum==target){
          resultList.add([nums[i],nums[j],nums[l],nums[h]]);
          l+=1;
          h -=1;
          while(l<h&&nums[l]==nums[l-1]){
              l+=1;
          }
           while(l<h&&nums[h]==nums[h+1]){
              h -=1;
          }
        }else if(fourSum<target){
             l+=1;
        }else if(fourSum>target){
                     h -=1;

        }


      }

    }
  }
  return resultList;
  }
}