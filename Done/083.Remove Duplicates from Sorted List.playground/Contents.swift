import Foundation

public class ListNode {
   public var val: Int
   public var next: ListNode?
   public init() { self.val = 0; self.next = nil; }
   public init(_ val: Int) { self.val = val; self.next = nil; }
   public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
   func deleteDuplicates(_ head: ListNode?) -> ListNode? {
       var result: ListNode? = head
       var values: [Int] = head?.val != nil ? [head?.val ?? 0] : []
       var currentNode = result
       while currentNode != nil {
           if !values.contains(currentNode?.val ?? 0) {
               values.append(currentNode?.val ?? 0)
           }
           if values.contains(currentNode?.next?.val ?? 0) {
               repeat {
                   currentNode?.next = currentNode?.next?.next
               } while values.contains(currentNode?.next?.val ?? 0) && currentNode?.next != nil
           }
           currentNode = currentNode?.next
       }
       return result
   }
}

let l5: ListNode = .init(0, nil)
let l4: ListNode = .init(0, l5)
let l3: ListNode = .init(0, l4)
let l2: ListNode = .init(0, l3)
let l1: ListNode = .init(0, l2)

Solution().deleteDuplicates(l1)
