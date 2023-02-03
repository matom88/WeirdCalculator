//
//  Power.swift
//  Copyright © 2021 Just Eat Takeaway. All rights reserved.
//

import Foundation

class Power: Operation {
  var process: CalculationProcess = { input in
    var partialResult = input.first
    input.rest.forEach {
      partialResult = Int(pow(Double(partialResult), Double($0)))
    }
    let resultValue = partialResult
    return Result(outputNumber: resultValue)
  }
}
