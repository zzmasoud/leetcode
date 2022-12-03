//
//  LC876.swift
//
//  Created by zzmasoud on 11/20/22.
//

struct Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var node: ListNode? = head
        var counter = 0
        
        while (node != nil) {
            node = node?.next
            counter += 1
        }
        
        let middle = Int(counter/2)
        node = head
        counter = 0
        
        while middle != counter {
            node = node?.next
            counter += 1
        }
        return node
    }
}
