// Thinkful Playground
// Thinkful.com

// Fibonacci Sequence

// By definition, the first two numbers in the Fibonacci sequence are 1 and 1, or 0 and 1, depending on the chosen starting point of the sequence, and each subsequent number is the sum of the previous two.

import UIKit

class FibonacciSequence {
    
    let includesZero: Bool
    let values: [Int]
    
    init(maxNumber: Int, includesZero: Bool) {
        
        self.includesZero = includesZero
        
        var tempArray = [Int]()
        
        var numOne:Int = 0
        var numTwo:Int = 1
        var numSum:Int = 0
        
        if !includesZero {
            numOne = 1
        }
        
        if !includesZero && maxNumber == 0 {
            self.values = []
        } else if includesZero == true && maxNumber == 0 {
            self.values = [0]
        } else {
        
            tempArray.append(numOne)
            tempArray.append(numTwo)
        
            while numSum <= maxNumber {
            
                numSum = numOne + numTwo
                numOne = numTwo
                numTwo = numSum
                tempArray.append(numSum)
            }
        
        self.values = tempArray
        }
    }
    
    init(numberOfItemsInSequence: Int, includesZero: Bool) {
        
        self.includesZero = includesZero
        
        var tempArray = [Int]()
        
        var numOne:Int = 0
        var numTwo:Int = 1
        var numSum:Int = 0
        
        if !includesZero {
            numOne = 1
        }
        
        if !includesZero && numberOfItemsInSequence == 0 {
            self.values = []
        } else if includesZero == true && numberOfItemsInSequence == 0 {
            self.values = [0]
        } else {
            
            tempArray.append(numOne)
            tempArray.append(numTwo)
        
        for var count = 0; count < numberOfItemsInSequence; ++count {
            numSum = numOne + numTwo
            numOne = numTwo
            numTwo = numSum
            tempArray.append(numSum)
        }

        self.values = tempArray
    }
    }
}

let zeroTestOne = FibonacciSequence(maxNumber: 0, includesZero: true)

let zeroTestTwo = FibonacciSequence(numberOfItemsInSequence: 0, includesZero: true)

let fibonacciSequence = FibonacciSequence(maxNumber:12345, includesZero: true)

let anotherSequence = FibonacciSequence(numberOfItemsInSequence: 13, includesZero: true)

let yetAnotherSequence = FibonacciSequence(maxNumber: 20000, includesZero: false)

let oneLastSequence = FibonacciSequence(numberOfItemsInSequence: 10, includesZero: false)



