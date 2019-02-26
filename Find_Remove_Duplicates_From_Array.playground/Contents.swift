//: Playground - noun: a place where people can play

import UIKit

//let ar = [2, 3, 4, 23, 4, 5, 13, 45, 23, 12, 13, 34, 45, 67, 23, 78]
let ar = [1, 2, 3, 4, 2, 3, 5]
//let ar = [1, 2, 3, 4, 2, 3, 1, 5]

//check how many times O(n) crazy
//let duplicates = Array(Set(ar.filter({ (i: Int) in ar.filter({ $0 == i }).count > 1})))
//better to read - copy:
let duplicates = Array(Set(
    ar.filter({ (i:Int) -> Bool in
        ar.filter({
           $0 == i
        }).count > 1
    })
))
print("AAA-Duplicates: \(duplicates)")


//NOTE: array has to be sorted in order this to work
func findDuplicates(array: [Int]) -> [Int]
{
   // let sortedArray = array.sorted()
    
    var duplicates = Set<Int>()
    var prevItem = 0
    
    for item in  array  //sortedArray //
    {
       // print("\(prevItem) : \(item)")
        if(prevItem == item)
        {
            duplicates.insert(item)
        }
        
        prevItem = item
    }
    
    return Array(duplicates)
}

let dup = findDuplicates(array: ar)

//print("dup: \(dup)")

//Array of strings
func removeDuplicates(array: [String]) -> [String] {
    var encountered = Set<String>()
    var result: [String] = []
    for value in array {
        if encountered.contains(value) {
            // Do not add a duplicate element.
        }
        else {
            // Add value to the set.
            encountered.insert(value)
            // ... Append the value.
            result.append(value)
        }
    }
    return result
}

// Test this array of animal names.
let animals: [String] = ["bird", "cat", "cat", "fish", "bird"]
print(animals)

// Call the method to dedupe the string array.
let dedupe = removeDuplicates(array: animals)
print(dedupe)



//using int
func removeDuplicates2(array: [Int]) -> [Int] {
    var encountered = Set<Int>()
    var result: [Int] = []
    for value in array {
        if encountered.contains(value) {
            // Do not add a duplicate element.
        }
        else {
            // Add value to the set.
            encountered.insert(value)
            // ... Append the value.
            result.append(value)
        }
    }
    return result
}

// Test this array of animal names.
let animals2: [Int] = [2, 6, 3, 13, 6, 10, 23, 13, 25, 24, 3]
print(animals2)

// Call the method to dedupe the string array.
let dedupe2 = removeDuplicates2(array: animals2)
print("dedupe2:",dedupe2)


//another option using only Set<Int>(values)

func removeDuplicateInts(values: [Int]) -> [Int] {
    // Convert array into a set to get unique values.
    let uniques = Set<Int>(values)
    // Convert set back into an Array of Ints.
    let result = Array<Int>(uniques)
    return result
}

// Remove duplicates from these example numbers.
let numbers: [Int] = [10, 20, 20, 30, 40, 50, 10]
let uniqueNumbers = removeDuplicateInts(values: numbers)
print(numbers)
print(uniqueNumbers)



//Using Generics -- making it more fun. 
func removeDuplicatesUsingGenerics<T:Hashable>(array:[T]) -> [T] {
    var encountered = Set<T>()
    var result: [T] = []
    for value in array {
        if encountered.contains(value) {
            // Do not add a duplicate element.
        }
        else {
            // Add value to the set.
            encountered.insert(value)
            // ... Append the value.
            result.append(value)
        }
    }
    return result
}

//let animalsG: [String] = ["bird", "cat", "cat", "fish", "bird"]
let animalsG: [Int] = [2, 6, 3, 13, 6, 10, 23, 13, 25, 24, 3]
print("animalsG:", animalsG)

// Call the method to dedupe the string array.
let removeDupleG = removeDuplicatesUsingGenerics(array: animalsG)
print("removeDupleG:",removeDupleG)


