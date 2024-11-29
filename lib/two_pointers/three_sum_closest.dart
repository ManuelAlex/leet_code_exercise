
// Given an integer array nums of length n and an integer target, find three integers in nums such that the sum is closest to target.

// Return the sum of the three integers.

// You may assume that each input would have exactly one solution.

 

// Example 1:

// Input: nums = [-1,2,1,-4], target = 1
// Output: 2
// Explanation: The sum that is closest to the target is 2. (-1 + 2 + 1 = 2).
// Example 2:

// Input: nums = [0,0,0], target = 1
// Output: 0
// Explanation: The sum that is closest to the target is 0. (0 + 0 + 0 = 0).

void main() {
  final Solution solution = Solution();
  print(solution.threeSumClosest([-1,2,1,-4],1));

}
class Solution {
  int threeSumClosest(List<int> nums, int target) {
 
    assert(nums.length >= 3, 'Input list must have at least 3 elements');

    // Sort the array
    nums.sort();
    
    // Initialize closestSum with the sum of the first three elements
    int closestSum = nums[0] + nums[1] + nums[2];

    // Iterate through the array
    for (int i = 0; i < nums.length - 2; i++) {
      // Avoid duplicates for the first number
      if (i > 0 && nums[i] == nums[i - 1]) continue;

      int left = i + 1;
      int right = nums.length - 1;

      // Use two pointers to find the closest sum
      while (left < right) {
        int threeSum = nums[i] + nums[left] + nums[right];

        // Check if this is closer to the target
        if ((target - threeSum).abs() < (target - closestSum).abs()) {
          closestSum = threeSum;
        }

        // If we find an exact match, return immediately
        if (threeSum == target) {
          return threeSum;
        }

        // Move pointers based on comparison
        if (threeSum < target) {
          left++;
        } else {
          right--;
        }
      }
    }

    return closestSum;
  }
}
