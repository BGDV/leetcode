import Foundation

class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        nums1 = Array(nums1.prefix(m))
        nums1.append(contentsOf: nums2)
        nums1 = nums1.sorted()
    }
}

var nums1 = [1,2,3,0,0,0]
let m = 3, nums2 = [2,5,6], n = 3

Solution().merge(&nums1, m, nums2, n)


