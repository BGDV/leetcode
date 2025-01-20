import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    
    public init() {
        self.val = 0
        self.next = nil
    }
    
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
    }
}

let l1_3: ListNode = .init(3)
let l1_2: ListNode = .init(4, l1_3)
let l1_1: ListNode = .init(2, l1_2)


let l2_3: ListNode = .init(4)
let l2_2: ListNode = .init(6, l2_3)
let l2_1: ListNode = .init(5, l2_2)



class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var result: [ListNode] = []
        var currentNode: ListNode?
        var numbL1: [Int] = []
        var numbL2: [Int] = []
        
        currentNode = l1
        repeat {
            numbL1.append(currentNode?.val ?? 0)
            currentNode = currentNode?.next
        } while currentNode != nil
        
        currentNode = l2
        repeat {
            numbL2.append(currentNode?.val ?? 0)
            currentNode = currentNode?.next
        } while currentNode != nil
        
        var resultArray: [Int] = []
        
        var firstLongest: Bool {
            if numbL1.count > numbL2.count {
                true
            } else {
                false
            }
        }
        
        var add = 0
        for index in 0..<(firstLongest ? numbL1.count : numbL2.count) {
            switch firstLongest {
            case true:
                var t = 0
                if index < numbL2.count {
                    t = numbL2[index]
                }
                let n = numbL1[index] + t + add
                if n > 9 {
                    resultArray.append(n-10)
                    add = 1
                } else {
                    resultArray.append(n)
                    add = 0
                }
            case false:
                var t = 0
                if  index < numbL1.count {
                    t = numbL1[index]
                }

                let n = numbL2[index] + t + add
                if n > 9 {
                    resultArray.append(n-10)
                    add = 1
                } else {
                    resultArray.append(n)
                    add = 0
                }
            }
        }
        
        if add == 1 {
            resultArray.append(1)
        }
    
        resultArray.forEach {
            result.append(ListNode($0))
        }
   
        for index in 0..<result.count {
            if index < result.count-1 {
                result[index].next = result[index + 1]
            }
        }

        return result.first
    }
}


Solution().addTwoNumbers(l1_1, l2_1)


class BestSolution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var node: ListNode? = ListNode()
        var l1 = l1, l2 = l2
        var curr = node
        var carry = 0

        while l1 != nil || l2 != nil || carry != 0 {
            var n = (l1?.val ?? 0) + (l2?.val ?? 0) + carry
            carry = n / 10
            var i = n % 10
            curr?.next = ListNode(i)
            curr = curr?.next
            l1 = l1?.next
            l2 = l2?.next
        }
        return node?.next
    }
}

BestSolution().addTwoNumbers(l1_1, l2_1)

