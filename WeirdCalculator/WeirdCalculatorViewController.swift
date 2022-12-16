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
          let result: Result = 0
            update(result)
            return
        }

        first = firstExtracted
        rest = extractedValues
    }

    private func update(_ result: Result) {
        resultLabel?.text = "\(result)"
    }

  private func executeOperation(ofType operationType: OperationType) {
    extractValues()
    let input = Input(first: first, rest: rest)
    let output = operationType.calculate(input: input)
    update(output)
  }

}

extension WeirdCalculatorViewController {

  @IBOutlet add

}
