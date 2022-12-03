//
//  LC206.swift
//
//  Created by zzmasoud on 11/20/22.
//

struct Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard let root = head, var nextNode = root.next else { return head }
        let new = reverseList(nextNode)
        nextNode.next = root
        root.next = nil
        return new
    }
}
