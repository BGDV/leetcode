import Foundation

// MARK: mine
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var result = [Int]()
        var index = 0
        var count = 1
        while index != nums.count-1 {
          while count != nums.count {
            if nums[index] + nums[count] == target {
                result.append(index)
                result.append(count)
                break
            } else {
                count += 1
            }
          }
             index += 1
             count = index + 1
        }
        return result
    }
}

// -----------

class BestSolution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var hashmap: [Int : Int] = [Int : Int]()

        for index in 0..<nums.count {
            let num: Int = nums[index]
            let difference: Int = target - num
            if hashmap[difference] != nil {
                return [hashmap[difference]!, index]
            } else {
                hashmap[num] = index
            }
        }
        return [-1,-1]
    }
}

