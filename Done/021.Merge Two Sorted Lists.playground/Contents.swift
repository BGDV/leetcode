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


class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var result: ListNode? = ListNode()
        guard list1 != nil else { return list2 }
        guard list2 != nil else { return list1 }
        var l1 = list1
        var l2 = list2
        var current = result

        while l1 != nil && l2 != nil {
            if l1?.val ?? 0 <= l2?.val ?? 0 {
                current?.next = l1
                l1 = l1?.next
            } else {
                current?.next = l2
                l2 = l2?.next
            }
            current = current?.next
        }
        current?.next = (l1 == nil ? l2 : l1)
        return result?.next
    }
}

let l1_3: ListNode = .init(4)
let l1_2: ListNode = .init(3, l1_3)
let l1_1: ListNode = .init(1, l1_2)


let l2_3: ListNode = .init(2)
let l2_2: ListNode = .init(2, l2_3)
let l2_1: ListNode = .init(1, l2_2)

Solution().mergeTwoLists(l1_3, l2_3)

