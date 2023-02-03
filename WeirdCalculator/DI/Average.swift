//
//  Average.swift
//  Copyright © 2021 Just Eat Takeaway. All rights reserved.
//

import Foundation

class Average: Operation {
  
  var process: CalculationProcess = { input in
    var total = 0
    input.rest.forEach{ total = total + $0 }
    let totalValue = input.first + total
    let count = input.rest.count + 1
    let resultValue = totalValue / count
    return Result(outputNumber: resultValue)
  }
}
