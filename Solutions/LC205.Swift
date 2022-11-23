//
//  LC205.swift
//
//  Created by zzmasoud on 11/22/22.
//

class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
            let sArray  = Array(s)
    let tArray = Array(t)

    var sLastOccurence = [String.Element: Int]()
    var tLastOccurence = [String.Element: Int]()

    for index in 0..<s.count {
        let sChar = sArray[index]
        let tChar = tArray[index]
        if sLastOccurence[sChar] != tLastOccurence[tChar] { return false }
        sLastOccurence[sChar] = index
        tLastOccurence[tChar] = index
    }
    return true
    }
}
