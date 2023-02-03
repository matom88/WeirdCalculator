//
//  Multiply.swift
//  WeirdCalculator
//
//  Created by Mauricio Torres Mejia on 28.10.22.
//

import Foundation

class Multiply: Operation {
  var process: CalculationProcess = { input in
    var partialResult = input.first
    input.rest.forEach {
      partialResult = partialResult * $0
    }
    let resultValue = partialResult
    return Result(outputNumber: resultValue)
  }
}
