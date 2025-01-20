import Foundation

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        var result = true
        let input = String(x)
        let reversed = String(input.reversed())
        if input == reversed {
            result = true
        } else {
            result = false
        }
        return result
    }
}

// ---------

class BestSolution {
    func isPalindrome(_ x: Int) -> Bool {
        guard x >= 0 else { return false }
        var x = x
        var div = 1

        // establish div -
        // it's the largest 10th place that is less than the number
        // so for 1331 it would be 1000
        while x >= 10 * div {
            div *= 10
        }

        // start checking
        while x != 0 {
            // AKA while the number hasn't been processed

            // get the right number
            let right = x % 10 // so 1331 % 10 would be 1

            // get the left number
            let left = x / div // so 1331 / 1000 is 1

            guard left == right else { return false }

            // chop left and right numbers off
            x = (x % div ) / 10

            // decrease div by 2 0s
            div = div / 100
        }

        return true
    }
}
