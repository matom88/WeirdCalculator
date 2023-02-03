//
//  Substract.swift
//  Copyright © 2021 Just Eat Takeaway. All rights reserved.
//

import Foundation

class Substract: Operation {

  var process: CalculationProcess = { input in
    var partialValue = input.first
    input.rest.forEach {
       partialValue = $0 - partialValue
    }
    let resultValue = partialValue
    return Result(outputNumber: resultValue)
  }
}
