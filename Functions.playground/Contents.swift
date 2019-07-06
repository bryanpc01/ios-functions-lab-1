import UIKit

///* 1.Complete the function so that it will print out total cost after tax. Make sure to **call the function** afterwards.
// */
//
//let itemCost = 45.0
//let nyTax = 0.08775
//
//func totalWithTax() {
//    let total = itemCost * (1 + nyTax)
//    print("The total after tax is: \(total)")
//}
//totalWithTax()
//
////Then, modify the function you implemented to have a return type of `Int`, and use an external name that looks more readable. Function calls should look something like "total cost of the item after tax"
//
//func totalCostAfterTax (itemCost:Double, tax: Double) -> Double {
//    return itemCost * (1 + tax)
//}
//
//print(totalCostAfterTax(itemCost: itemCost, tax: nyTax))

///* 2. Convert the the following if/else statement below into function with a `String` return type.
// */
//let todaysTemperature = 72
//
//func howIsTheTemperature(temp: Int) -> String {
//    if todaysTemperature <= 40 {
//        return "It's cold out."
//    } else if todaysTemperature >= 85 {
//        return "It's really warm."
//    } else {
//        return "Weather is moderate."
//    }
//}
//
//print(howIsTheTemperature(temp: todaysTemperature))

///* 3. Write a function named `min2` that takes two `Int` values, `a` and `b`, and returns the smallest one.
//
// Function Definition
// `func min2(a: Int, b: Int) -> Int`
//
// Example:
// Input: `min2(a:1, b:2)`
//
// Output: `1`
// */
//
//func min2(a: Int, b: Int) -> Int {
//    return a < b ? a : b
//}
//print(min2(a: 1, b: 2))

///* 4. Write a function that takes an `Int` and returns its last digit. Name the function `lastDigit`. Use _ to ignore the external parameter name.
//
// Function Definition:
// `func lastDigit(_ number: Int) -> Int`
//
// Example:
// Input: `lastDigit(12345)`
//
// Output: `5`
// */
//func lastDigit(_ number: Int) -> Int {
//    return number % 10
//}
//print(lastDigit(12345))

///* 5. Write a function that takes in any two positive integers and return the sum. */
//func sumOfTwoPositiveInt(_ a: UInt, _ b: UInt) -> Int {
//    return Int(a + b)
//}
//print(sumOfTwoPositiveInt(3, 4))

///* 6. Write a function takes in any number grade and returns a corresponding letter grade.
//
// | Number Grade | Equivalent Letter Grade |
// | :--------: | :---------: |
// | 100 | A+ |
// | 90 - 99 | A |
// | 80 - 89 | B |
// | 70 - 79 | C |
// | 65 - 69 | D |
// | Below 65 | F |
// */
//
//func studentLetterGrade(from grade: Int) -> String {
//    switch grade {
//    case 100:
//        return "\(grade) is an A+"
//    case 90...99:
//        return "\(grade) is an A"
//    case 80...89:
//        return "\(grade) is a B"
//    case 70...79:
//        return "\(grade) is a C"
//    case 60...69:
//        return "\(grade) is a D"
//    case 0...65:
//        return "\(grade) is a F"
//    default:
//        return "Please enter a valid grade."
//    }
//}
//print(studentLetterGrade(from: 82))

///* 7. Make a calculator function that takes in three parameters (two numbers and one operator) and returns the answer of the operation.
//
// Operator parameter: (+, -, x, /)
// */
//func calculateOperationsOnIntegers(a: Int, b: Int, operand: String) -> Int {
//    switch operand {
//    case "+":
//        return a + b
//    case "-":
//        return a - b
//    case "x", "*":
//        return a * b
//    case "/":
//        return a / b
//    default:
//        return Int.min
//    }
//}
//
//print(calculateOperationsOnIntegers(a: 5, b: 3, operand: "*"))

/////* 8. Write a function so that it will print out **total cost after tip.** */
//let mealCost = 45.0
//let tipPercentage = 0.15
//
////Write your code below
//func totalWithTip(total: Double, tip: Double) -> Double {
//    return total * (1 + tip)
//}
//let myFinalCost = totalWithTip(total: mealCost, tip: tipPercentage)
//print(myFinalCost)
//
//// Write a function that will print out **total cost after tip and tax.**
//let taxPercentage = 0.09
//
//func totalWithTipAndTax(total: Double, tip: Double, tax: Double) -> Double {
//
//    return total * (1 + tip + tax)
//}
//
//let myFinalCostWithTipAndTax = totalWithTipAndTax(total: mealCost, tip: tipPercentage, tax: taxPercentage)
//print(myFinalCostWithTipAndTax)

///* 9. Implement a function named `repeatPrint` that takes a string `message` and a integer `count` as parameters. The function should print `message` `count` number of times and then print a newline.
//
// Example:
// Input: `repeatPrint(message: "+", count: 10)`
//
// Output: `++++++++++`
// */
//func repeatPrint(message: String, count: Int) {
//    var outputString = ""
//    for _ in 0...count {
//        outputString += message
//    }
//    print(outputString)
//}
//
//repeatPrint(message: "+", count: 10)

///* 10. Write a function named `first` that takes an Int named n and returns an array with the first n numbers starting from 1.
//
// Function Definition
// `func first(_ n: Int) -> [Int]`
//
// Example:
// Input: `first(3)`
//
// Output: `[1, 2, 3]`
// */
//func first(_ n: Int) -> [Int] {
//    var outputArray = [Int]()
//    for number in 1...n {
//        outputArray.append(number)
//    }
//    return outputArray
//}
//
//print(first(5))

///* 11. Write a function that prints the numbers from 1 to x, except:
//
// If the number if a multiple of 3, print `"Fizz"` instead of the number
// If the number is a multiple of 5, print `"Buzz"` instead of the number
// If the number is a multiple of 3 AND 5, print `"FizzBuzz"` instead of the number
// Your function should take in one parameter: x (the number to count up to)
// */
//
//let x = 25
//func fizzbuzz(x: Int) {
//    for number in 1...x {
//        switch (number % 3 == 0, number % 5 == 0) {
//        case (true,true):
//            print("FizzBuzz", number)
//        case(true,false):
//            print("Fizz", number)
//        case (false,true):
//            print("Buzz", number)
//        case(false,false):
//            print(number)
//        }
//    }
//}
//fizzbuzz(x: x)

///* 12. Write a function named `reverse` that takes an array of integers named `numbers` as a parameter. The function should return an array with the numbers from `numbers` in reverse order.
//
//
// Example:
// Input: `reverse([1, 2, 3])`
//
// Output: `[3, 2, 1]`
// */
//func reverse(arr: [Int]) ->[Int] {
//    var output = [Int]()
//    for number in stride(from: arr.count - 1, through: 0, by: -1){
//      output.append(arr[number])
//    }
//    return output
//}
//
//print(reverse(arr: [1,2,3]))

///* 13. Write a function that prints out the most frequently appearing Int in an array of Int.
// */
//func mostFrequentNum(in arr: [Int]) {
//    var frequencyOfNumbers = [Int : Int]()
//    var modifiedArr = arr.sorted()
//
//    var currentNum = modifiedArr[0]
//    var counter = 0
//
//    for number in modifiedArr {
//        if number == currentNum {
//            counter += 1
//            frequencyOfNumbers[number] = counter
//        } else {
//            currentNum = number
//            counter = 1
//            frequencyOfNumbers[number] = counter
//        }
//    }
//    var highestFrequency = (Int.min, Int.min)
//    let keys = frequencyOfNumbers.keys.sorted()
//    for key in keys {
//        if let value = frequencyOfNumbers[key], value > highestFrequency.1{
//            highestFrequency = (key,value)
//        }
//    }
//
//    print(highestFrequency)
//}
//mostFrequentNum(in: [1, 2, 3, 2, 3, 5, 1, 3, 4])

/* 14. Write a function that sums all the even indices of an array of Ints.
 */
