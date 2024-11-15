import UIKit
//MARK: - Smallest and Largest value in an array
//1. Find the smallest and the largest without high order function.

func findSmallAndLarge(_ arr:[Int]) -> [Int] {
    var small = 100
    var large = 0
    for i in arr{
        if i < small {
            small = i
        }
        if i > large{
            large = i
        }
    }
    return [small,large]
    
    
}

print(findSmallAndLarge([1,2,3,4,10,0]))
//MARK: - Second Largest Value in an Array

//2. Find the second largest value in an array of integers
func findSecondLargest(_ arr: [Int]) -> Int {
    var largest = 0
    var secondLargest = 0
    for i in arr{
        if i > largest {
            secondLargest = largest
            largest = i
        } else {
            if i > secondLargest {
                secondLargest = i
            }
        }
    }
    return secondLargest
}

print(findSecondLargest([0,1,2,3,5,4,6]))
print(findSecondLargest([3,7,1,6,9,2,8,4]))

//MARK: - String Palindrome
//3.  Check to see if a string is a palindrome
func isPalindrome(str: String) -> Bool {
    var arr1 = Array(str)
    var i = 0
    var j = arr1.count - 1
    while i<j {
        if arr1[i] != arr1[j] {
            return false
        }
        i+=1
        j-=1
    }
    return true
}
print(isPalindrome(str: "abcba"))
print(isPalindrome(str: "dharma"))
print(isPalindrome(str: "nitin"))
print(isPalindrome(str: "abccba"))
print(isPalindrome(str: "abcde"))


//MARK: - Linear Search
//Program to implement linear search.
func linearSearch(_ arr: [Int], _ target: Int) -> Int? {
    for i in arr{
        if i == target {
            return target
        }
    }
    return nil
}

let numbers = [5, 3, 8, 1, 4, 7]
let target = 2

print(linearSearch(numbers, target) ?? "nil")

//MARK: - Find the max sum of numbers on consecutive indices.
// Find the max sum of numbers on consecutive indices.
// array = new Integer[] {-5, 2, 2, 3, 4, -7, -3, 120}; // 121
// array = new Integer[] {-5, 1, 2, 3, 4, 5, 6, -10, -5, 100}; // 106
// array = new Integer[] {1, 2, 3, 4, 5, 6, 7, 8}; // 36
// array = new Integer[] {-5, 1, 2, 3, 4, -10}; //10
// array = new integer[] {-10, 2, 1, -1,-5} // 3 */
//{1, 2, 3, 4, -100, 5, 6, 7, 8};/

func findMaxSum(_ arr: [Int]) -> Int {
    var current = arr[0]
    var sum = arr[0]
    for i in 1...arr.count-1 {
        current = max(arr[i], current + arr[i])
        if current > sum {
            sum = current
        }
    }
    return sum
}

print(findMaxSum([-5, 1, 2, 3, 4, -10]))
