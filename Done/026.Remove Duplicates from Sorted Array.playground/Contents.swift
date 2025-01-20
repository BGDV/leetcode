import Foundation

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var numbers: [Int] = []
        let s: Set<Int> = Set(nums)
        s.forEach {
            numbers.append($0)
        }
        nums = numbers.sorted(by: { one, two in
            one < two
        })
        
        return numbers.count
    }
}

var nums = [0,0,1,1,1,2,2,3,3,4]

Solution().removeDuplicates(&nums)



class BestSolution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        nums = Array(Set(nums)).sorted()
        return nums.count
    }
}



