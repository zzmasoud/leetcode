//
//  LC13.swift
//
//  Created by zzmasoud on 11/19/22.
//

class Solution {
    
    enum Roman: String {
        case I, V, X, L, C, D, M
        
        var value: Int {
            switch self {
            case .I:
                return 1
            case .V:
                return 5
            case .X:
                return 10
            case .L:
                return 50
            case .C:
                return 100
            case .D:
                return 500
            case .M:
                return 1000
            }
        }
    }
    
    func romanToInt(_ s: String) -> Int {
        var sum = 0
        var i = 0
        while i < s.count {
            let number = Roman(rawValue: String(s[s.index(s.startIndex, offsetBy: i)]))!.value
            
            if i < s.count-1 {
                let nextIndex = s.index(s.startIndex, offsetBy: i+1)
                let nextLetter = String(s[nextIndex])
                let nextNumber = Roman(rawValue: nextLetter)!.value
                
                if number < nextNumber {
                    sum += (nextNumber - number)
                    i += 1
                } else {
                    sum += number
                }
            } else {
                sum += number
            }
            
            i += 1
        }
        return sum
    }
}
