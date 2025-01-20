import Foundation

// MARK: mine
class Solution {
    func myAtoi(_ s: String) -> Int {
        var result: Int32 = 0
        var minus: Bool = false
        var str = s.trimmingCharacters(in: .whitespacesAndNewlines)

        if str.prefix(1) == "-" {
            minus = true
            str = String(str.dropFirst())
        } else if str.prefix(1) == "+" {
            str = String(str.dropFirst())
        }

        var tempStr = ""
        for i in str {
            if let numb = Int(i.description) {
                tempStr += i.description
            } else {
                break
            }
        }

        guard !tempStr.isEmpty else { return 0 }

        guard let x = Int32(tempStr) else {
            if minus {
                return Int(Int32.min)
            } else {
                return Int(Int32.max)
            }
        }

        result = Int32(tempStr) ?? 0

        if minus {
            result.negate()
        }
        return Int(result)
    }
}

// ------------------

class BestSolution {
    func myAtoi(_ s: String) -> Int {
        let text = s.trimmingCharacters(in: .whitespaces)

        guard !text.isEmpty else { return 0 }
        var result = 0
        var sign = 1
        var i = text.startIndex

        if text.first == "-" || text.first == "+" {
            sign = text[i] == "-" ? -1 : 1
            i = text.index(after: i)
        }

        while i < text.endIndex, text[i].isNumber {
            let digit = Int(String(text[i]))!

            if result > (Int(Int32.max) - digit) / 10 {
                return sign == 1 ? Int(Int32.max) : Int(Int32.min)
            }

            result = result * 10 + digit
            i = text.index(after: i)
        }

        return sign * result
    }
}

let s =  "    -+42iu"

Solution().myAtoi(s)



