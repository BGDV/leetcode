import Foundation

class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        let splited = s.split(separator: " ")
        return splited.last?.count ?? 0
    }
}

let str = "   fly me   to   the moon  "

Solution().lengthOfLastWord(str)
