import Foundation

// MARK: 0 ms
class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var result = -1
        var pointer = 0
        
        while pointer < nums.count && nums[pointer] <= target {
            if nums[pointer] == target {
                result = pointer
            }
            pointer += 1
        }
        if result == -1 {
            result = pointer
        }
        return result
    }
}

let numbers = [1]
let target = 1


Solution().searchInsert(numbers, target)



