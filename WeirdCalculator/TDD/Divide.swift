//
//  Divide.swift
//  Copyright © 2021 Just Eat Takeaway. All rights reserved.
//

import Foundation

class Divide: Operation {
  var process: CalculationProcess = { input in
    var partialResult = input.first
    input.rest.forEach {
      partialResult = partialResult / $0
    }
    let resultValue = partialResult
    return Result(outputNumber: resultValue)
  }
}
