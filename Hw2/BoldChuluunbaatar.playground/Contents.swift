//: Playground - noun: a place where people can play
// Homework 2
// Bold Chuluunbaatar

import UIKit

var str = "Hello, playground"

//Write a function in Swift that performs the following tasks
//a. Function rank performs a binary search of a key in a sorted integer array.If the key appears in the array, the rank function returns the index of key in the array. If the key does not appear in the array, the rank function returns -1. (A Java implementation of the rank function can be found in Algorithm, 4th ed. by R. Sedgewick and K. Wayne, the textbook of the data structures course.)
//b. Create a sorted integer array to test the rank function. Make several calls o the rank function. Verify that the results are correct.

func search<T:Comparable>(Arr:Array<T>, item: T) ->Int{
    var lower = 0;
    var upper = Arr.count - 1
    
    while (true){
        let mid = (lower + upper)/2
        if (Arr[mid] == item){
            return mid
        }else if(lower > upper){
            return -1
        }else{
            if(Arr[mid] > item) {
                upper = mid - 1
            }else{
                lower = mid + 1
            }
        }
    }
}
var ar=[1,2,3,4,5,7,8,9,10]
var lol = search(Arr: ar,item: 19);
var lols = search(Arr: ar,item: 9);

//2
class Fraction {
    var numerator: Int = 0
    var denominator: Int = 1
//    init(numberator: Int, denominator: Int){
//        self.numerator = numerator
//        self.denominator = denominator
//    }
    func setTo(numerator: Int, denominator: Int){
        self.numerator = numerator
        self.denominator = denominator
    }
    func setTo(numerator: Int, over denominator: Int){
        self.numerator = numerator
        self.denominator = denominator
    }
    func setTo(_ numerator: Int, _ denominator: Int){
        self.numerator = numerator
        self.denominator = denominator
    }
    func add(_ f: Fraction) -> Fraction {
        let result: Fraction = Fraction()
        result.numerator = numerator * f.denominator + denominator * f.numerator;
        result.denominator = denominator * f.denominator;
        result.reduce()
        return result
    }
    func subtraction(_ f: Fraction) -> Fraction {
        let result: Fraction = Fraction()
        result.numerator = numerator * f.denominator - denominator * f.numerator;
        result.denominator = denominator * f.denominator;
        result.reduce()
        return result
    }
    func multiply(_ f: Fraction) -> Fraction {
        let result: Fraction = Fraction()
        result.numerator = numerator * f.numerator;
        result.denominator = denominator * denominator;
        result.reduce()
        return result
    }
    func divide(_ f: Fraction) -> Fraction {
        let result: Fraction = Fraction()
        result.numerator = numerator * f.denominator;
        result.denominator = denominator * f.denominator;
        result.reduce()
        return result
    }
    func print() {
        Swift.print("\(numerator)/\(denominator)")
    }
    func reduce(){
        let sign = numerator >= 0 ? 1:-1
        var u = numerator * sign
        var v = denominator
        var r: Int
        while v != 0 {
            r = u % v
            u = v
            v = r
        }
        numerator /= u * sign
        denominator /= u
    }
}

var f1 = Fraction()
f1.setTo(3, 4)
f1.print()
var f2 = Fraction()
f2.setTo(1, 5)
f2.print()

f1.add(f2)
f1.subtraction(f2)
f1.divide(f2)
f1.multiply(f2)


