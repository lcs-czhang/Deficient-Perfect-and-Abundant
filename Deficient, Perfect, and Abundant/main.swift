//
//  main.swift
//  Deficient, Perfect, and Abundant
//
//  Created by Yuzhou Zhang on 2024-09-25.
//

import Foundation

func getInput(withPrompt prompt: String, minimum: Int?, maximum: Int?) -> Int {
    
    // Loop until a valid value is provided
    while true {
        
        // Prompt the user
        if prompt != "" {
            print(prompt)
        }
        
        // Collect the input
        guard let givenInput = readLine() else {
            continue
        }
        
        // Convert to an integer
        guard let givenInteger = Int(givenInput) else {
            continue
        }
        
        // If a lowest value for the integer was specified...
        if let minimumValue = minimum {
            
            // ... then check that the given integer is greater than or equal to the lowest desired value.
            guard givenInteger >= minimumValue else {
                continue
            }
            
        }
        
        // If an highest possible value for the integer was specified...
        if let maximumValue = maximum {
            
            // ... then check that the given integer is less than or equal to the highest desired value.
            guard givenInteger <= maximumValue else {
                continue
            }
            
            
        }
        
        // If we've made it past all the checks, the input is an integer in the desired range of values, so, return it
        return givenInteger
        
    }
    
}
let inputNumber = getInput(withPrompt: "", minimum: 1, maximum: 32500)
func isNumberDeficientOrPerfectOrAbundant(number: Int) -> String{
    let sumOfD = sumOfDivisors(number: number, numberChecking: 1)-number
    if sumOfD == number{
        return "perfect"
    } else if sumOfD < number{
        return "deficient"
    } else {
        return "abundant"
    }
}
func sumOfDivisors(number: Int, numberChecking: Int) -> Int{
    if (number/numberChecking < numberChecking){
        return 0
    }
    if (number%numberChecking == 0){
        if (number/numberChecking == numberChecking){
            return numberChecking
        }
        return sumOfDivisors(number: number, numberChecking: numberChecking+1)+numberChecking+number/numberChecking
    }
    return sumOfDivisors(number: number, numberChecking: numberChecking+1)
}
print("\(inputNumber) is a \(isNumberDeficientOrPerfectOrAbundant(number: inputNumber)) number.")
