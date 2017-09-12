//: Playground - noun: a place where people can play

import UIKit

//Create a new variable
//put value "Hello World"
//print the value
var str1 = "Hello World"

print(str1)


//create a new variable of type string
//dont assign any value
//print the value and see what happen(Explicit typing)
var str2 : String

//print(str2) error happen because string cannot be nil

//optional string declaration allow the variable to accept nil value
var str3 :String?
print(str3)


//Assign myString2 to "Goodbye world"
//Retrieve the value

str3 = "Goodbye world"
print(str3)
//force unwrap
print(str3!)

//optional binding
if let str4 = str3 {
    print(str4)
}

//Mathematics
let a = 10
let b = 3
//5 Operator
// +
let sum = a + b
// -
let minus = a - b
// *
let multiplication = a * b
// /
let division = a / b
// % 
let modulo = a % b

let c = 10.0
let divisionPoint = c/Double(b)

let divisionTransform = Double(a/b)
print(divisionTransform)


//Array
//Create an array with the even number between 1 to 10
//call the three important methods of array
// create two for loops to iterate all the values in the array

var arrays = [2, 4, 6, 8, 10]
arrays.append(12)
arrays.count
arrays[0]

for i in 0..<arrays.count {
    print(arrays[i])
}

for array in arrays {
    print(array)
}

//Create a dictionary mapping country- code and country, for example: My - Malaysia
//Retrieve the value of MY from the dictionary
var country = ["MY" : "Malaysia", "SG" : "Singapore", "VN" : "Vietnam"]

print(country["MY"]!)

