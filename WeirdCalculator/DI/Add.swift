//
//  Add.swift
//  Copyright © 2021 Just Eat Takeaway. All rights reserved.
//

import Foundation

class Add: Operation {

  var process: CalculationProcess = { input in
    let resultValue = input.rest.reduce(input.first) { partialResult, nextValue in
      return partialResult + nextValue
    }
    return Result(outputNumber: resultValue)
  }
}
