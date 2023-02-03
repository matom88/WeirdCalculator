//
//  WeirdCalculatorViewController.swift
//  WeirdCalculator
//
//  Created by Mauricio Torres Mejia on 26.10.22.
//

import UIKit

class WeirdCalculatorViewController: UIViewController {

    var first: Int = 0
    var rest: [Int] = []

    @IBOutlet var resultLabel: UILabel?
    @IBOutlet var inputField: UITextField?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    private func extractValues() {

        var extractedValues = inputField?.text?.split(separator: " ").compactMap { Int($0) } ?? []

        guard let firstExtracted = extractedValues.popFirst() else {
          let result = Result(outputNumber: 0)
            update(result)
            return
        }

        first = firstExtracted
        rest = extractedValues
    }

    private func update(_ result: Result) {
      resultLabel?.text = "\(result.outputNumber)"
    }

  private func executeOperation(_ operation: Operation) {
    extractValues()
    let input = Input(first: first, rest: rest)
    let output = operation.process(input)
    update(output)
  }

}

extension WeirdCalculatorViewController {

  @IBAction func addNumbers(_ sender: UIButton) {
    executeOperation(Add())
  }

  @IBAction func substractNumbers(_ sender: UIButton) {
    executeOperation(Substract())
  }

  @IBAction func multiplyNumbers(_ sender: UIButton) {
    executeOperation(Multiply())
  }

  @IBAction func averageNumbers(_ sender: UIButton) {
    executeOperation(Average())
  }

  @IBAction func powerNumbers(_ sender: UIButton) {
    executeOperation(Power())
  }

}
