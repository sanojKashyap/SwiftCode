//: [Previous](@previous)

import Foundation

//Question: https://leetcode.com/explore/featured/card/top-interview-questions-easy/92/array/727/
/*
 Given a sorted array nums, remove the duplicates in-place such that each element appear only once and return the new length.

 Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.

 Example 1:

 Given nums = [1,1,2],

 Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively.

 It doesn't matter what you leave beyond the returned length.
 Example 2:

 Given nums = [0,0,1,1,1,2,2,3,3,4],

 Your function should return length = 5, with the first five elements of nums being modified to 0, 1, 2, 3, and 4 respectively.

 It doesn't matter what values are set beyond the returned length.
 Clarification:

 Confused why the returned value is an integer but your answer is an array?

 Note that the input array is passed in by reference, which means modification to the input array will be known to the caller as well.

 Internally you can think of this:

 // nums is passed in by reference. (i.e., without making a copy)
 int len = removeDuplicates(nums);

 // any modification to nums in your function would be known by the caller.
 // using the length returned by your function, it prints the first len elements.
 for (int i = 0; i < len; i++) {
     print(nums[i]);
 }
 
 */

func removeDuplicates(_ nums: inout [Int]) -> Int {
//    var nextElementIndex:Int = 1
//    var currentElementIndex:Int = 0
//    var noduplicated:[Int] = [Int]()
//    var untilunique = false
//
//    if nums.count == 0 {
//        return 0
//    }else if nums.count == 1 {
//        noduplicated.append(nums[0])
//    }else if (nums.count >= 2) {
//        while nextElementIndex < nums.count {
//               if (nums[currentElementIndex] == nums[nextElementIndex]) {
//                   nextElementIndex = nextElementIndex + 1
//                if (!untilunique && nextElementIndex == nums.count){
//                       noduplicated.append(nums[currentElementIndex])
//                       untilunique = true
//                   }
//               }else {
//                    noduplicated.append(nums[currentElementIndex])
//                   currentElementIndex = nextElementIndex
//                   nextElementIndex = nextElementIndex + 1
//                   untilunique = false
//                   if nextElementIndex == nums.count {
//                       noduplicated.append(nums[nextElementIndex-1])
//                   }
//               }
//           }
//    }
//
//    print("Unique Array: \(noduplicated)")
//    return noduplicated.count
        
    if (nums.count == 0) { return 0 }
    var i = 0
    for j in 1..<nums.count {
        if (nums[j] != nums[i]) {
            i = i + 1
            nums[i] = nums[j]
        }
    }
    return i + 1
}

var array:[Int] = [1,1,2,3,3,4,4]
print("Unique Element: \(removeDuplicates(&array))")
