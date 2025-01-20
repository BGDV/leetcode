import Foundation

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        
        if strs.count == 1 {
            return strs[0].description
        }
        for i in strs {
            guard i != "" else { return "" }
        }
        
        var defaultStrs = ""
        var temp = strs
        var i = 0
        var iter = true
        
        while iter {
                while i+1 < strs.count {
                    if temp[i].hasPrefix(temp[i+1].first!.description) {
                       
                        if i+1 == strs.count - 1 {
                            defaultStrs += String("\(temp[i].first!)")
                        }
                        
                        i += 1
                        
                    } else {
                        iter = false
                        break
                    }
            }
            i = 0
            var temp2 = temp
            temp.removeAll()
            for i in temp2 {
                guard String(i.dropFirst()) != "" else { iter = false; break }
                temp.append(String(i.dropFirst()))
            }
        }
        return defaultStrs
    }
}

// --------


class BestSolution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var minString: String = strs.min { $0.count < $1.count } ?? ""

        print(minString)
        
        for str in strs {
            while !str.hasPrefix(minString) {
                minString.removeLast()
            }
        }
        return minString
    }
}

let strs = ["flower","flow","flight"]

BestSolution().longestCommonPrefix(strs)
