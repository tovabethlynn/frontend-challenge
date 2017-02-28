/*
 
 III. Write a method in Objective-C or Swift to generate the nth Fibonacci number
 
 (1, 1, 2, 3, 5, 8, 13, 21, 34....)
 
 A. recursive approach
 B. iterative approach
 
 */

// Time to complete: 2 hours

import UIKit


// A. Recursive Approach

func fibonacciRecursive(n: Int) -> Int {
    
    if n == 0 {
        return 0
    } else if n == 1 || n == -1 {
        return 1
    }
    
    if n > 0 {
        return fibonacciRecursive(n: n - 2) + fibonacciRecursive(n: n - 1)
    } else {
        return fibonacciRecursive(n: n + 2) - fibonacciRecursive(n: n + 1)
    }
    
}


// Usage:

for num in -8...8 {
    print("F\(num): \(fibonacciRecursive(n: num))")
}





// B. Iterative Approach

func fibonacciIterative(n: Int) -> Int {
    
    // every number after the first two is the sum of the two preceding numbers
    
    var num = abs(n)
    var prev = 0
    var next = 1
    var temp: Int
    
    while (num > 0){
        temp = next
        if n >= 0 {
            next = next + prev
        } else {
            next = prev - next
        }
        prev = temp
        num = num - 1
    }
    
    return prev
    
}



// Usage:

for n in -20...20 {
    print("F\(n) = \(fibonacciIterative(n: n))")
}


