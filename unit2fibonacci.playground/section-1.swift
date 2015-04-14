// Thinkful Playground
// Thinkful.com

// Fibonacci Sequence

// By definition, the first two numbers in the Fibonacci sequence are 1 and 1, or 0 and 1, depending on the chosen starting point of the sequence, and each subsequent number is the sum of the previous two.

import UIKit

class FibonacciSequence {
    
    let includesZero: Bool
    let values: [UInt]
    
    init(maxNumber: UInt, includesZero: Bool) {
        
        self.includesZero = includesZero
        
        var tempArray = [UInt]()
        
        var numOne:UInt = 0
        var numTwo:UInt = 1
        var (numSum:UInt, didOverflow:Bool) = (0, false)
        
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
            
                (numSum, didOverflow) = UInt.addWithOverflow(numOne, numTwo)
                numOne = numTwo
                numTwo = numSum
                if didOverflow == true {
                    println("Overflow!")
                    break
                }
                tempArray.append(numSum)
            }
        
        self.values = tempArray
        }
    }
    
    init(numberOfItemsInSequence: UInt, includesZero: Bool) {
        
        self.includesZero = includesZero
        
        var tempArray = [UInt]()
        
        var numOne:UInt = 0
        var numTwo:UInt = 1
        var (numSum:UInt, didOverflow:Bool) = (0, false)
        
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
        
            for var count:UInt = 0; count < numberOfItemsInSequence; ++count {
            (numSum, didOverflow) = UInt.addWithOverflow(numOne, numTwo)
            numOne = numTwo
            numTwo = numSum
            if didOverflow == true {
                println("Overflow!")
                break
            }
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

let overflowTestSequence = FibonacciSequence(numberOfItemsInSequence: 500, includesZero: true)


