import Foundation

func divisibleBy(div: Double) -> (Double -> Bool) {
    return { (number: Double) in
        return number % div == 0
    }
}

let array = [20.0, 23.0, 25.0, 120.0]

array.filter(divisibleBy(5.0))

//: [Previous](@previous)
