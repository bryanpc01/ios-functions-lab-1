# Functions lab 1

Fork and clone this repo. On your fork, answer and commit the follow questions. When you are finished, submit the link to your repo on Canvas.


## Question 1

Complete the function so that it will print out total cost after tax. Make sure to **call the function** afterwards.

```swift
let itemCost = 45.0
let nyTax = 0.08775

func totalWithTax() {
    let total = itemCost * (1 + nyTax)
    print("The total after tax is: \(total)")
}
totalWithTax()
```

Then, modify the function you implemented to have a return type of `Int`, and use an external name that looks more readable. Function calls should look something like "total cost of the item after tax"

```swift
func totalCostAfterTax (of itemCost:Double, after tax: Double) -> Double {
    return itemCost * (1 + tax)
}

print(totalCostAfterTax(of: itemCost, after: nyTax))
```
## Question 2

Convert the the following if/else statement below into function with a `String` return type.

```swift
let todaysTemperature = 72

if todaysTemperature <= 40 {
    print("It's cold out.")
} else if todaysTemperature >= 85 {
    print("It's really warm.")
} else {
    print("Weather is moderate.")
}
```

```swift
let todaysTemperature = 72

func howIsTheTemperature(temp: Int) -> String {
    if temp <= 40 {
        return "It's cold out."
    } else if temp >= 85 {
        return "It's really warm."
    } else {
        return "Weather is moderate."
    }
}

print(howIsTheTemperature(temp: todaysTemperature))
```


## Question 3

Write a function named `min2` that takes two `Int` values, `a` and `b`, and returns the smallest one.

Function Definition
`func min2(a: Int, b: Int) -> Int`

Example:
Input: `min2(a:1, b:2)`

Output: `1`

```swift
func min2(a: Int, b: Int) -> Int {
    return a < b ? a : b
}
print(min2(a: 1, b: 2))
```

## Question 4

Write a function that takes an `Int` and returns its last digit. Name the function `lastDigit`. Use _ to ignore the external parameter name.

Function Definition:
`func lastDigit(_ number: Int) -> Int`

Example:
Input: `lastDigit(12345)`

Output: `5`

```swift
func lastDigit(_ number: Int) -> Int {
    return number % 10
}
print(lastDigit(12345))
```

## Question 5

Write a function that takes in any two positive integers and return the sum.

```swift
func sumOfTwoPositiveInt(_ a: UInt, _ b: UInt) -> Int {
    return Int(a + b)
}
print(sumOfTwoPositiveInt(3, 4))
```

## Question 6

Write a function takes in any number grade and returns a corresponding letter grade.

| Number Grade | Equivalent Letter Grade |
| :--------: | :---------: |
| 100 | A+ |
| 90 - 99 | A |
| 80 - 89 | B |
| 70 - 79 | C |
| 65 - 69 | D |
| Below 65 | F |

```swift
func studentLetterGrade(from grade: Int) -> String {
    switch grade {
    case 100:
        return "\(grade) is an A+"
    case 90...99:
        return "\(grade) is an A"
    case 80...89:
        return "\(grade) is a B"
    case 70...79:
        return "\(grade) is a C"
    case 60...69:
        return "\(grade) is a D"
    case 0...65:
        return "\(grade) is a F"
    default:
        return "Please enter a valid grade."
    }
}
print(studentLetterGrade(from: 82))
```

## Question 7

Make a calculator function that takes in three parameters (two numbers and one operator) and returns the answer of the operation.

Operator parameter: (+, -, x, /)

```swift
func calculateOperationsOnIntegers(a: Int, b: Int, operand: String) -> Int {
    switch operand {
    case "+":
        return a + b
    case "-":
        return a - b
    case "x", "*":
        return a * b
    case "/":
        return a / b
    default:
        return Int.min
    }
}

print(calculateOperationsOnIntegers(a: 5, b: 3, operand: "*"))
```

## Question 8

Write a function so that it will print out **total cost after tip.**

```swift
let mealCost = 45.0
let tipPercentage = 0.15

//Write your code below
func totalWithTip(totalWithoutTip: Double, tip: Double) -> Double {
    return totalWithoutTip * (1 + tip)
}
let myFinalCost = totalWithTip(totalWithoutTip: mealCost, tip: tipPercentage)
print(myFinalCost)
```

Write a function that will print out **total cost after tip and tax.**

```swift
let taxPercentage = 0.09

func totalWithTipAndTax(total: Double, tip: Double, tax: Double) -> Double {

    return total * (1 + tip + tax)
}

let myFinalCostWithTipAndTax = totalWithTipAndTax(total: mealCost, tip: tipPercentage, tax: taxPercentage)
print(myFinalCostWithTipAndTax)
```


## Question 9

Implement a function named `repeatPrint` that takes a string `message` and a integer `count` as parameters. The function should print `message` `count` number of times and then print a newline.

Example:
Input: `repeatPrint(message: "+", count: 10)`

Output: `++++++++++`

```swift
func repeatPrint(message: String, count: Int) {
    var outputString = ""
    for _ in 0...count {
        outputString += message
    }
    print(outputString)
}

repeatPrint(message: "+", count: 10)
```

## Question 10

Write a function named `first` that takes an Int named n and returns an array with the first n numbers starting from 1.

Function Definition
`func first(_ n: Int) -> [Int]`

Example:
Input: `first(3)`

Output: `[1, 2, 3]`

  ```swift
  func first(_ n: Int) -> [Int] {
    var outputArray = [Int]()
    for number in 1...n {
        outputArray.append(number)
    }
    return outputArray
}

print(first(5))
  ```


## Question 11

Write a function that prints the numbers from 1 to x, except:

If the number if a multiple of 3, print `"Fizz"` instead of the number
If the number is a multiple of 5, print `"Buzz"` instead of the number
If the number is a multiple of 3 AND 5, print `"FizzBuzz"` instead of the number
Your function should take in one parameter: x (the number to count up to)

```swift
let x = 25
func fizzbuzz(x: Int) {
    for number in 1...x {
        switch (number % 3 == 0, number % 5 == 0) {
        case (true,true):
            print("FizzBuzz", number)
        case(true,false):
            print("Fizz", number)
        case (false,true):
            print("Buzz", number)
        case(false,false):
            print(number)
        }
    }
}
fizzbuzz(x: x)
```

## Question 12

Write a function named `reverse` that takes an array of integers named `numbers` as a parameter. The function should return an array with the numbers from `numbers` in reverse order.


Example:
Input: `reverse([1, 2, 3])`

Output: `[3, 2, 1]`

```swift
func reverse(arr: [Int]) ->[Int] {
    var output = [Int]()
    for number in stride(from: arr.count - 1, through: 0, by: -1){
      output.append(arr[number])
    }
    return output
}

print(reverse(arr: [1,2,3]))
```


## Question 13

Write a function that prints out the most frequently appearing Int in an array of Int.

```swift
func mostFrequentNum(in arr: [Int]) {
    var frequencyOfNumbers = [Int : Int]()
    var modifiedArr = arr.sorted()

    var currentNum = modifiedArr[0]
    var counter = 0

    for number in modifiedArr {
        if number == currentNum {
            counter += 1
            frequencyOfNumbers[number] = counter
        } else {
            currentNum = number
            counter = 1
            frequencyOfNumbers[number] = counter
        }
    }
    var highestFrequency = (Int.min, Int.min)
    let keys = frequencyOfNumbers.keys.sorted()
    for key in keys {
        if let value = frequencyOfNumbers[key], value > highestFrequency.1{
            highestFrequency = (key,value)
        }
    }

    print(highestFrequency)
}
mostFrequentNum(in: [1, 2, 3, 2, 3, 5, 1, 3, 4])
```


## Question 14

Write a function that sums all the even indices of an array of Ints.

```swift
func sumOfArrayIndices(arr: [Int]) -> Int {
    var sum = 0
    for index in arr.indices where index % 2 == 0{
        sum += index
    }
    return sum
}

print(sumOfArrayIndices(arr: [1,2,3]))
```


## Question 15

Write a function that flips a dictionary.  All of the keys are now values and all of the values are now keys.

Example:
Input: `[1: "hi", 5: "bye:]`

Output: `["hi": 1, "bye": 5]`

```swift
func dictionaryFlip(dict: [Int : String]) -> [String : Int]{
    let keysArr = Array(dict.keys)
    let valuesArr = Array(dict.values)
    var outputDict = [String : Int]()
    for index in 0...keysArr.count - 1 {
        let newKey = valuesArr[index]
        let newValue = keysArr[index]
        outputDict[newKey] = newValue
    }
    return outputDict
}

print(dictionaryFlip(dict: [1: "hi", 5: "bye"]))
```


## Question 16

Write a function that finds the person with the second highest test score in a Dictionary that maps names to scores.

Example:
Input: `["Person 1": 83, "Person 2": 74, "Person 3": 82]`

Output: `"Person 3"`

```swift
func secondHighestScore(dict: [String : Int]) -> String {
    var personWithSecondHighestScore = ""
    var personWithHighestScore = ""
    var highestScore = 0
    var secondHighestScore = 0

    for (key,value) in dict where value >= secondHighestScore {
        if value > highestScore {
            secondHighestScore = highestScore
            personWithSecondHighestScore = personWithHighestScore
            highestScore = value
            personWithHighestScore = key
        } else {
            secondHighestScore = value
            personWithSecondHighestScore = key
        }
    }

    return personWithSecondHighestScore
}

print(secondHighestScore(dict: ["Person 1": 83, "Person 2": 74, "Person 3": 82]))
```

## Question 17

Write a function that determines if a value is inside of array.

```swift
func isInArray(value: Int, in arr: [Int]) -> Bool {
    for number in arr where number == value {
        return true
    }
    return false
}

print(isInArray(value: 11, in: [1,2,3,4,5,6,7,8,9,10]))
```


## Question 18

Write a function takes an `Int` as input, and returns true if it is even, or false if it is odd.
Using your new function, write code that prints out whether `dieRoll` is even or odd:

`let dieRoll = Int(arc4random_uniform(6) + 1)`

```swift
func evenOrOdd(x: Int) -> Bool {
    return x % 2 == 0
}
let dieRoll = Int(arc4random_uniform(6) + 1)
print(dieRoll,evenOrOdd(x: dieRoll))
```

## Question 19

Write a function that takes `[Int]` as input. It should return the largest Int in the array.

Using your function from the first step, use String interpolation to print a sentence that states what the largest Int in `myArray` is.

`let myArray = [3,5,1,3,532,1,4,91,20,30,92,143]`

If you haven't already done so, write a function that takes in an Int and returns whether that number is even or odd. Use that function to print a sentence that states whether the largest Int in `myArray` is even or odd.

```swift
func largestIntInArray(arr: [Int]) -> Int {
    var largestInt = Int.min

    for value in arr where value > largestInt {
        largestInt = value
    }
    return largestInt
}

// Using your function from the first step, use String interpolation to print a sentence that states what the largest Int in `myArray` is
let myArray = [3,5,1,3,532,1,4,91,20,30,92,143, 533]
let largestInteger = largestIntInArray(arr: myArray)

print("The largest integer in myArray is: \(largestInteger)")

// If you haven't already done so, write a function that takes in an Int and returns whether that number is even or odd. Use that function to print a sentence that states whether the largest Int in `myArray` is even or odd.
func evenOrOdd(x: Int) -> Bool {
    return x % 2 == 0
}

print("\(largestInteger), the largest integer in myArray is \(evenOrOdd(x: largestInteger) ? "even." : "odd.")")
```

## Question 20

Write a function that takes a String as input and returns the number of characters in the string

Using your function, print how many characters are in myString:

`let myString = "Swift is a new programming language for iOS, OS X, watchOS, and tvOS apps that builds on the best of C and Objective-C, without the constraints of C compatibility."`

```swift
func numberOfCharactersInAString(input: String) -> Int {
    return input.count
}

let myString = "Swift is a new programming language for iOS, OS X, watchOS, and tvOS apps that builds on the best of C and Objective-C, without the constraints of C compatibility."

print("The number of characters in myString is:",numberOfCharactersInAString(input: myString))
```

## Question 21

Write a function that counts how many characters in a String match a specific character.  (e.g: count how many "a"s are in a String, or count how many ","s are in a String.

Example:
Input:
```swift
let testString = "This is a test string for your code"
let targetCharacter: Character = "i"
```

Sample output: `3`

```swift
let testString = "This is a test string for your code"
let targetCharacter: Character = "i"

func countNumberOf(char: Character, in string: String) -> Int {
    var counter = 0
    for character in string where char == character {
        counter += 1
    }
    return counter
}

print(countNumberOf(char: targetCharacter, in: testString))
```


## Question 22

Write a function that counts how many characters in a String match one of several possible characters.  (e.g: count how many vowels are in a String, or count how many "a"s "b"s and "c"s are in a Sting)

Example:
Input:
```swift
let inputString = "This one is a little more complicated"
let targetCharacters: [Character] = ["a","e","i","o","u"]
```

Output: `13`

```swift
let inputString = "This one is a little more complicated"
let targetCharacters: [Character] = ["a","e","i","o","u"]

func countNumberOfTargetChars(target: [Character], string: String) -> Int {
    var counter = 0
    for character in string where targetCharacters.contains(character) {
        counter += 1
    }
    return counter
}
print(countNumberOfTargetChars(target: targetCharacters, string: inputString))
```


## Question 23

Write a function that returns the number of unique Ints in an array of Ints.

Example:
Input: `let inputArray2 = [3,1,4,1,3,2,6,1,9]`

Output: `4`

//Explanation: 2, 4, 6, 9 are unique in the array. Every other number is not unique.

```swift
let inputArray2 = [3,1,4,1,3,2,6,1,9,9,11,12]

func uniqueIntegers(arr: [Int]) -> Int {
    var setOfReusedValues = Set<Int>()
    var testSet = Set<Int>()

    for value in arr {
        let testTuple = testSet.insert(value)
        if testTuple.inserted == false {
            setOfReusedValues.insert(testTuple.memberAfterInsert)
        }
    }

    return testSet.subtracting(setOfReusedValues).count
}

print(uniqueIntegers(arr: inputArray2))
```

## Question 24

Write a function that converts a binary number into decimal. The binary number will be given as an array of Ints.

Example:
Input: `let binaryArray = [1,0,1,1,1,0,1]`

Output: `93`

```swift
let binaryArray = [1,0,1,1,1,0,1]

func binaryArrayToInt(arr: [Int]) -> Int {
    var decimalValue = 0
    for (index,value) in arr.reversed().enumerated() {
        decimalValue += Int(pow(2.0, Double(index))) * value
    }
    return decimalValue
}

print(binaryArrayToInt(arr: binaryArray))
```

## Question 25

Write a function named `timeDifference`. It takes as input four numbers that represent two times in a day and returns the difference in minutes between them. The first two parameters `firstHour` and `firstMinute` represent the hour and minute of the first time. The last two `secondHour` and `secondMinute` represent the hour and minute of the second time. All parameters should have external parameter names with the same name as the local ones.

Example:
Input: `timeDifference(firstHour: 12, firstMinute: 3, secondHour: 13, secondMinute: 10)`

Output: `67`

```swift
func timeDifference(firstHour: Int, firstMinute: Int, secondHour: Int, secondMinute: Int) -> Int {
    let firstTime = firstHour * 60 + firstMinute
    let secondTime = secondHour * 60 + secondMinute

    return abs(firstTime - secondTime)
}
print(timeDifference(firstHour: 12, firstMinute: 3, secondHour: 13, secondMinute: 10))
```


## Question 26

Write a function called `filterOdd` that takes an array of ints and returns it with just the even numbers.

Example:
Input:  `filterOdd(arr: [1, 2, 3, 4, 5, 6, 7, 8])`

Output: `[2, 4, 6, 8]`

```swift
func filterOdd(arr: [Int]) -> [Int] {
    var outputArr = [Int]()
    for value in arr where value % 2 == 0 {
        outputArr.append(value)
    }
    return outputArr
}
print(filterOdd(arr: [1, 2, 3, 4, 5, 6, 7, 8]))
```


## Question 27

Write a function called `doubleIt` that takes an array of ints and returns it with all the elements doubled.

Example:
Input: `doubleIt(arr: [1, 2, 3, 4])`

Output: `[2, 4, 6, 8]`


Then write a function called `multiplyBy` that takes an array of ints and an int n that will return the array with all the elements multiplied by n.

Example:
Input:  `multiplyIt(arr: [1, 2, 3, 4], n: 4)`

Output:  `[4, 8, 12, 16]`

```swift
func doubleIt(arr: [Int]) -> [Int] {
    var outputArr = [Int]()
    for value in arr {
        outputArr.append(value * 2)
    }
    return outputArr
}
print(doubleIt(arr: [1, 2, 3, 4]))

func multiplyIt(arr: [Int], n: Int) -> [Int] {
    var outputArr = [Int]()
    for value in arr {
        outputArr.append(value * n)
    }
    return outputArr
}
print(multiplyIt(arr: [1, 2, 3, 4], n: 4))
```


## Question 28

Write a function called `unwrap` that takes an array of optional ints and returns an array with them unwrapped with any nil values removed.

Example:
Input:  `unwrap(arr: [nil, 7, 4, nil, 43, 11, nil, 2])`

Output: `[7, 4, 43, 11, 2]`

```swift
func unwrap(arr: [Int?]) -> [Int] {
    var outputArr = [Int]()
    for value in arr {
        if let number = value {
            outputArr.append(number)
        }
    }
    return outputArr
}
print(unwrap(arr: [nil, 7, 4, nil, 43, 11, nil, 2]))
```


## Question 29

Write a function that takes an array of bools and returns a dictionary that maps the bools to how many times they appear in the array.

Example:
Input:  `countBools(arr: [true, true, false, true, false, true])`

Output: `[false: 2, true: 4]`

```swift
func countBools(arr: [Bool]) -> [Bool: Int] {
    var outputDict = [true: 0, false: 0]
    for value in arr {
        if let currentNumber = outputDict[value] {
            outputDict[value] = currentNumber + 1
        }
    }
    return outputDict
}
print(countBools(arr: [true, true, false, true, false, true]))
```

## Question 30

Write a function that takes a string as input and returns a dictionary that maps each unique character to how many times they appear in the string.

Example:
Input:  `countCharacters(str: "Hello, World!")`

Output: `["H": 1, "r": 1, "!": 1, "e": 1, "o": 2, "l": 3, ",": 1, " ": 1, "W": 1, "d": 1]`

```swift
func countCharacters(str: String) -> [String : Int] {
    var outputDict = [String : Int]()
    for char in str {
        if let currentCount = outputDict[String(char)] {
            outputDict[String(char)] = currentCount + 1
        } else {
            outputDict[String(char)] = 1
        }
    }
    return outputDict
}
print(countCharacters(str: "Hello, World!"))
```

## Question 31

Write a function that takes this dictionary of baseball teams by ID and returns an array of tuples that contain each team's ID and name.

`let baseballTeamsById = [1001:"Mets", 1002:"Yankees", 1003:"Rays", 1004:"Marlins"]`

Example:
Input:  `dictToTuples(dict: baseballTeamsById)`

Output: `[(.0 1003, .1 "Rays"), (.0 1001, .1 "Mets"), (.0 1004, .1 "Marlins"), (.0 1002, .1 "Yankees")]`

```swift
func dictToTuples(dict: [Int: String]) -> [(id: Int, team: String)] {
    var outputArry = [(Int, String)]()
    for (key, value) in dict {
        outputArry.append((key, value))
    }
    return outputArry
}

let baseballTeamsById = [1001:"Mets", 1002:"Yankees", 1003:"Rays", 1004:"Marlins"]
print(dictToTuples(dict: baseballTeamsById))
```


## Question 32

Write a function that checks if a String is a [Palindrome](https://en.wikipedia.org/wiki/Palindrome)

```swift
func isPalindrome(str: String){
    let isPalindrome = str == String(str.reversed())

    isPalindrome ? print("Your input string is a palindrome.") : print("Your input string is not a palindrome.")
}
isPalindrome(str: "aabaa")
```


## Question 33

Write a function that checks if a String is a [pangram](https://en.wikipedia.org/wiki/Pangram)

```swift
func isPangram(str: String) {
    let alphabet: Set<String> = ["a","b","c","d","e","f","g", "h","i","j", "k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    var testSet = Set<String>()

    for character in str.lowercased() where ![" ","\n",",","-", "'", "\"", "\'", "?", "!"].contains(character){
        testSet.insert(String(character))
    }
    alphabet == testSet ? print("The input string is a pangram.") : print("The input string is not a pangram.")
}
isPangram(str: "abcdefghijknlmnoprstuvwxyz")
```


## Question 34

Write your own `min()` and `max()` functions for an Array of Ints

```swift
let inputArray = [1,2,3,4,5,6,7,8,9,10]

func myMax(arr: [Int]) -> Int {
    var highestInt = Int.min
    for value in arr where value > highestInt {
        highestInt = value
    }
    return highestInt
}
print("Max:",myMax(arr: inputArray))

func myMin(arr: [Int]) -> Int {
    var lowestInt = Int.max
    for value in arr where value < lowestInt {
        lowestInt = value
    }
    return lowestInt
}
print("Min:",myMin(arr: inputArray))
```


## Question 35

Given two arrays of Ints, write a function that tells you all the values they have in common.

```swift
let input1 = [1,2,3]
let input2 = [2,3,4]
func commonValuesInArry(arr1: [Int], arr2: [Int]) -> [Int] {
    var commonValues = [Int]()
    for value in arr1 where arr2.contains(value) {
        commonValues.append(value)
    }
    return commonValues
}
print(commonValuesInArry(arr1: input1, arr2: input2))
```


## Question 36

Find the most-frequently appearing Array of Ints in an Array of Arrays of Ints.

```swift
func mostFrequentArrayOfInts (in arr: [[Int]]) -> [Int] {
    var outputArry = [Int]()
    var frequencyDict = [[Int]: Int]()
    for array in arr {
        if let count = frequencyDict[array] {
            frequencyDict[array] = count + 1
        } else {
            frequencyDict[array] = 1
        }
    }
    var highestCount = 0
    for (key,value) in frequencyDict where value > highestCount {
        highestCount = value
        outputArry = key
    }
    return outputArry
}
print(mostFrequentArrayOfInts(in: [[1,2],[1,2],[1,2,3],[1,2,3,4,5],[1,2,3],[1,2,3],[1,2,3]]))
```

## Question 37

Given a String as input, rotate all a-z characters by one.  This is called [ROT-1 encryption](http://www.rot-n.com/).

Sample input:
`This is a test string. Anything can be written in here (even Zebras and zebras).`

Sample output:
`Uijt jt b uftu tusjoh. Bozuijoh dbo cf xsjuufo jo ifsf (fwfo Afcsbt boe afcsbt).`


```swift
func rot_1(str: String) -> String {
    var outputString = ""
    let rot_1Dic = ["a" : "b","b" : "c","c" : "d","d" : "e",
                    "e" : "f","f" : "g","g" : "h","h" : "i",
                    "i" : "j","j" : "k","k" : "l","l" : "m",
                    "m" : "n","n" : "o","o" : "p","p" : "q",
                    "q" : "r","r" : "s","s" : "t","t" : "u",
                    "u" : "v","v" : "w","w" : "x","x" : "y",
                    "y" : "z","z" : "a",
                    "A" : "B","B" : "C","C" : "D","D" : "E",
                    "E" : "F","F" : "G","G" : "H","H" : "I",
                    "I" : "J","J" : "K","K" : "L","L" : "M",
                    "M" : "N","N" : "O","O" : "P","P" : "Q",
                    "Q" : "R","R" : "S","S" : "T","T" : "U",
                    "U" : "V","V" : "W","W" : "X","X" : "Y",
                    "Y" : "Z","Z" : "A"]
    for character in str {
        if let newChar = rot_1Dic[String(character)] {
            outputString += newChar
        } else {
            outputString += String(character)
        }
    }
    return outputString
}
let input = "This is a test string. Anything can be written in here (even Zebras and zebras)."
print("Input: \(input)")
print("Output: \(rot_1(str: input))")
```
