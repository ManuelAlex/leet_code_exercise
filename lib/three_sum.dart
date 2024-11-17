// Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.

// Notice that the solution set must not contain duplicate triplets.

 

// Example 1:

// Input: nums = [-1,0,1,2,-1,-4]
// Output: [[-1,-1,2],[-1,0,1]]
// Explanation: 
// nums[0] + nums[1] + nums[2] = (-1) + 0 + 1 = 0.
// nums[1] + nums[2] + nums[4] = 0 + 1 + (-1) = 0.
// nums[0] + nums[3] + nums[4] = (-1) + 2 + (-1) = 0.
// The distinct triplets are [-1,0,1] and [-1,-1,2].
// Notice that the order of the output and the order of the triplets does not matter.
// Example 2:

// Input: nums = [0,1,1]
// Output: []
// Explanation: The only possible triplet does not sum up to 0.
// Example 3:

// Input: nums = [0,0,0]
// Output: [[0,0,0]]
// Explanation: The only possible triplet sums up to 0.
void main() {
  final Solution solution = Solution();
  print(solution.threeSum(<int>[-1,0,1,2,-1,-4]));

}

class Solution {
  List<List<int>> threeSum(List<int> nums) {
    List<List<int>> resultList = <List<int>>[];
    if (nums.length < 3) return resultList;

    // Sort the array
    nums.sort();

    for (int i = 0; i < nums.length; i++) {
      int a = nums[i];

      // Skip duplicate elements for `a`
      if (i > 0 && nums[i] == nums[i - 1]) {
        continue;
      }

      int left = i + 1;
      int right = nums.length - 1;

      // Solve two-sum with pointers
      while (left < right) {
        int threeSum = a + nums[left] + nums[right];

        if (threeSum > 0) {
          right--;
        } else if (threeSum < 0) {
          left++;
        } else {
          resultList.add([a, nums[left], nums[right]]);
          left++;
         // right--;

          // Skip duplicates for `left`
          while (left < right && nums[left] == nums[left - 1]) {
            left++;
          }

          // Skip duplicates for `right`
          // while (left < right && nums[right] == nums[right + 1]) {
          //   right--;
          // }
        }
      }
    }
    return resultList;
  }
}
