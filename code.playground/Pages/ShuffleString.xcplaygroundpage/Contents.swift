//: [Previous](@previous)

import Foundation

//https://leetcode.com/contest/weekly-contest-199/problems/shuffle-string/

class ShuffleString {
    func restoreString(_ s: String, _ indices:[Int]) -> String {
        let dataArray = indices
        let array:[Int] = dataArray.sorted(by: { $0 < $1 }) as [Int]
        let characters = Array(s)
        var tempstring = ""
        for index in 0..<array.count {
            let oldIndex = dataArray.firstIndex(of: index)
            tempstring = tempstring + String(characters[array[oldIndex!]])
        }
        print("\(tempstring)")
        return tempstring
    }
}

let object  = ShuffleString()
object.restoreString("codeleet", [4,5,6,7,0,2,1,3])



