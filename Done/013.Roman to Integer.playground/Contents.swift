import Foundation

class Solution {
    let romToInt = [
        "I" :    1,
        "IV":    4,
        "V" :    5,
        "IX":    9,
        "X" :   10,
        "XL":   40,
        "L" :   50,
        "XC":   90,
        "C" :  100,
        "CD":  400,
        "D" :  500,
        "CM":  900,
        "M" : 1000,
    ]
    func romanToInt(_ s: String) -> Int {
        let s = s.map{"\($0)"}
        var i = 0
        var result = 0
        while i < s.count{
            if i+1 < s.count {
                if romToInt["\(s[i])\(s[i+1])"] != nil {
                    result += romToInt["\(s[i])\(s[i+1])"]!
                    i += 2
                    continue
                }
            }
            result += romToInt[s[i]]!
            i += 1
        }
        return result
    }
}

let x = "VI"

Solution().romanToInt(x)
