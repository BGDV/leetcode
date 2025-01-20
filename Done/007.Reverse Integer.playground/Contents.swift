import Foundation

class Solution {
    func reverse(_ x: Int) -> Int {
        
        var numb = [String]()
        let text = String(x)
        var reversed = ""
        var result = 0
  
        for i in text {
            if i != "-" {
                numb.append(String(i))
            }
        }
        numb.reverse()

        for i in numb {
            reversed = reversed + i
        }
 
        result = Int(reversed) ?? 0
        
        if text.hasPrefix("-") {
            result = result - (result*2)
        }
        
        guard result < Int32.max && result > Int32.min else { return 0 }
        
        
        return result
            
    }
}

// --------------

class BestSolution {
    func reverse(_ x: Int) -> Int {
        var xStr: String
        
        if x > 0 {
            xStr = String(String(x).reversed())
        } else {
            xStr = String(String(x * -1).reversed())
        }
        let xInt = Int(String(xStr))!
        
        guard xInt <= Int(Int32.max), xInt * -1 >= Int(Int32.min) else { return 0 }
        
        return x > 0 ? Int(String(xStr))! : Int(String(xStr))! * -1
    }
}
