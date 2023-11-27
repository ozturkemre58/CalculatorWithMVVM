//
//  MathRepository.swift
//  CalculatorWithMVVM
//
//  Created by Emre Öztürk on 27.11.2023.
//

import Foundation
import RxSwift

class MathRepository {
    var result = BehaviorSubject<String>(value: "0")
    
    func addition(firstValue: String, secondValue: String) {
        if let intFirstValue = Int(firstValue), let intSecondValue = Int(secondValue) {
            let addition = intFirstValue + intSecondValue
            result.onNext(String(addition))
        }
    }
     
    func subtraction(firstValue: String, secondValue: String) {
        if let intFirstValue = Int(firstValue), let intSecondValue = Int(secondValue) {
            let subtraction = intFirstValue - intSecondValue
            result.onNext(String(subtraction))        }
    }
    
    func multiplication(firstValue: String, secondValue: String) {
        if let intFirstValue = Int(firstValue), let intSecondValue = Int(secondValue) {
            let multiplication = intFirstValue * intSecondValue
            result.onNext(String(multiplication))        }
    }
    
    func division(firstValue: String, secondValue: String) {
        if let intFirstValue = Int(firstValue), let intSecondValue = Int(secondValue) {
            let division = intFirstValue / intSecondValue
            result.onNext(String(division))        }
    }
}
