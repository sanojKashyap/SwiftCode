//: [Previous](@previous)

import Foundation

/*
 Given a non-empty array of integers, every element appears twice except for one. Find that single one.

 Note:

 Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?

 Example 1:

 Input: [2,2,1]
 Output: 1
 Example 2:

 Input: [4,1,2,1,2]
 Output: 4
 */

func singleNumber(_ nums: [Int]) -> Int {
    
        if (nums.count == 0) {return 0}
        let sumSet = Set(nums).reduce(0, +)
        let arraySum = nums.reduce(0, +)

        return (2*sumSet - arraySum)
}

print(singleNumber([2,2,3,4,4]))
