//
//  ViewController.swift
//  CalculatorWithMVVM
//
//  Created by Emre Öztürk on 27.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstInputTF: UITextField!
    @IBOutlet weak var secondInputTF: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    var viewModel = MainViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        prepareViews()
    }

    func prepareViews() {
        _ = viewModel.result.subscribe(onNext: { result in
            self.resultLabel.text = result
        })
    }


    @IBAction func additionAction(_ sender: Any) {
        viewModel.addition(firstValue: firstInputTF.text ?? "0", secondValue: secondInputTF.text ?? "0")
    }
    
    @IBAction func subtractionAction(_ sender: Any) {
        viewModel.subtraction(firstValue: firstInputTF.text ?? "0", secondValue: secondInputTF.text ?? "0")
    }
    
    @IBAction func multiplicationAction(_ sender: Any) {
        viewModel.multiplication(firstValue: firstInputTF.text ?? "0", secondValue: secondInputTF.text ?? "0")
    }
    
    @IBAction func divisionAction(_ sender: Any) {
        viewModel.division(firstValue: firstInputTF.text ?? "0", secondValue: secondInputTF.text ?? "0")
    }
    
}

