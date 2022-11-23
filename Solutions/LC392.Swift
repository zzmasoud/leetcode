//
//  LC392.swift
//
//  Created by zzmasoud on 11/23/22.
//

class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        if s.count == 0 { return true }
        
        let s = Array(s)
        let t = Array(t)
        
        var pointer = 0
        
        for index in 0..<t.count {
            if t[index] == s[pointer] {
                pointer += 1
                if pointer == s.count {
                    return true
                }
            }
        }
        return false
    }
}
