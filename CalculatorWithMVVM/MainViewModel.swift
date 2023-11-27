//
//  mainViewModel.swift
//  CalculatorWithMVVM
//
//  Created by Emre Öztürk on 27.11.2023.
//

import Foundation
import RxSwift

class MainViewModel {
    
    var result = BehaviorSubject<String>(value: "0")
    var mathRepo = MathRepository()
    
    init() {
        result = mathRepo.result
    }
    
    func addition(firstValue: String, secondValue: String) {
        mathRepo.addition(firstValue: firstValue, secondValue: secondValue)
    }
     
    func subtraction(firstValue: String, secondValue: String) {
        mathRepo.subtraction(firstValue: firstValue, secondValue: secondValue)
    }
    
    func multiplication(firstValue: String, secondValue: String) {
        mathRepo.multiplication(firstValue: firstValue, secondValue: secondValue)
    }
    
    func division(firstValue: String, secondValue: String) {
        mathRepo.division(firstValue: firstValue, secondValue: secondValue)
    }
}
