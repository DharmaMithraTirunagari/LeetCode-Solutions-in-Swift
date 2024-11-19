import UIKit
//MARK: - Create a func that return medium element of the array
// Create a func that return medium element of the array.

func medianOfArray(_ arr: [Double]) -> Double? {
    let new_arr = arr.sorted()
    let num = new_arr.count / 2
    if (new_arr.count % 2 != 0)  {
        return new_arr[num]
    }
    else {
        return (new_arr[num] + new_arr[num-1]) / 2
    }
}

print(medianOfArray([1.0,2.0,3.0,4.0,10.0]) as Any)
print(medianOfArray([1.0,2.0,3.0,4.0,10.0,12.0]) as Any)

//MARK: - Remove characters from the first string which are present in the second string
//Remove characters from the first string which are present in the second string

// Approach 1
func removechars(_ str1: String, _ str2: String) -> String {
    let str2Set = Set(str2)
    var result: String = ""
    for i in str1 {
        if (!str2Set.contains(i)) {
            result.append(i)
        }
            }
    return result
}

// Approach 2
func removechars1(_ str1: String, _ str2: String) -> String {
    let str2Set = Set(str2)
    let result = str1.filter{ !str2Set.contains($0)}
    return result
}

print(removechars("aabbbbbcc", "cc"))
print(removechars("DharmaMithra", "am"))
print(removechars1("aabbbbbcc", "cc"))
print(removechars1("DharmaMithra", "am"))

