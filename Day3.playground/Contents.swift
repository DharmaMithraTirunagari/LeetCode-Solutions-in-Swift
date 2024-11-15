import UIKit

//MARK: - Format Phone Number
//write single a function, that takes a number to return a formatted phone number
//so like 1234567890 to (123)456-7890?
//array [1,2,3,4,5,6,7,8,9,0] to [123,456,7890]?

func formatPhoneNumber(_ str: String) -> String {
    let firstThree = str.prefix(3)
    let lastFour = str.suffix(4)
    let midThree = str[str.index(str.startIndex, offsetBy: 3) ..< str.index(str.startIndex, offsetBy: 6)]
    return "(\(firstThree))\(midThree)-\(lastFour)"
}

print(formatPhoneNumber("1234567890"))


//MARK: - First Pair sum equals to zero
//Find the first pair of array elements having sum equal to zero.

// Approach 1 - time Complexity- O(n^2)
//func firstPairSumEqualToZero(_ arr: [Int]) -> [Int] {
//    for i in 0..<arr.count-1 {
//        for j in i+1..<arr.count {
//            if arr[i] + arr[j] == 0 {
//                return [arr[i],arr[j]]
//            }
//        }
//    }
//    return []
//}
// Approach 2 - using sets - time Complexity- O(n)
func firstPairSumEqualToZero(_ arr: [Int]) -> [Int] {
    var visited = Set<Int>()
    for number in arr {
        let complement = -number
        if visited.contains(complement) {
            return [number,complement]
        }
        visited.insert(number)
    }
    return []
    
}

let numberss = [-3, 1, 2, 4, -2, -1]
let result = firstPairSumEqualToZero(numberss)
print("First pair that sums to zero: \(result)")

