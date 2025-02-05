import Foundation

// MARK: 0 ms
class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        var result = -1
        var index = 0
        while result == -1 && index < haystack.count {
            var startIndex = index
            var haystackOffSet = index
            var needleOffSet = 0
            repeat {
                let i = haystack.index(haystack.startIndex, offsetBy: haystackOffSet)
                let n = needle.index(needle.startIndex, offsetBy: needleOffSet)
                if haystack[i] == needle[n] {
                    guard needleOffSet != needle.count-1 else {
                        result = startIndex
                        break
                    }
                    haystackOffSet += 1
                    needleOffSet += 1
                } else {
                    break
                }
            } while needleOffSet < needle.count && result == -1 && haystackOffSet < haystack.count
            
            index += 1
        }
        return result
    }
}

let haystack = "aaa"
let needle = "aaaa"

Solution().strStr(haystack, needle)
