import UIKit

//MARK: - DigitSum
//There is an integer, and try to get each digital of the integer and sum them.
//For example : Int 123, then we have 1,2,3. So total number is 6.

func digitSum(_ number: Int) -> Int {
    var digit : Int
    var sum = 0
    var value = number
    while value > 0{
        digit = value % 10
        sum = sum + digit
        value/=10
    }
    return sum
}

print(digitSum(456))

//MARK: - Swap Element
func swapK(_ arr: [Int], _ k: Int) -> [Int] {
    var count = 0
    var newArr : [Int] = []
    for i in arr{
        if i == k {
            count+=1
        }
        else {
            newArr.append(i)
        }
    }
    for i in 1...count{
        newArr.append(k)
    }
    return newArr
}

print(swapK([4,3,5,7,1,3,4], 3))
print(swapK([2, 3, 4, 3, 5, 3, 6], 3))


