//
//  LC1480.swift
//
//  Created by zzmasoud on 11/20/22.
//

class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var sumArray: [Int] = []
        var sum: Int = 0
        
        nums.forEach {
            sum += $0
            sumArray.append(sum)
        }
        
        return sumArray
     }
}
