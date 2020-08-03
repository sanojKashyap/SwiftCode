//: [Previous](@previous)

import Foundation

/*
 Contains Duplicate

 Given an array of integers, find if the array contains any duplicates.

 Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.
 */

//NOTE: This is solution is corrct for not too long input array.
func containsDuplicate(_ nums: [Int]) -> Bool {
    
    if (nums.count == 0) {return false}
    
    for i in 0..<nums.count {
        let startIndex = i + 1;
        for j in startIndex..<nums.count {
            if nums[i] == nums[j] {
                return true
            }
        }
    }
    return false
}
func containsDuplicateUsingSeet(_ nums: [Int]) -> Bool {
    if (Set(nums).count != nums.count) {
        return true
    }else {
        return false
    }
}




var array:[Int] = [1,2,3,4,4]
print("Array Contains Duplicate: \(containsDuplicate(array))")
print("Array Contains Duplicate using Set: \(containsDuplicateUsingSeet(array))")

