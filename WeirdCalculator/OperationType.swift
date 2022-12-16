//
//  OperationType.swift
//  Copyright © 2021 Just Eat Takeaway. All rights reserved.
//

import Foundation

typealias CalculationProcess = (Input) -> Result
typealias Result = Int

enum OperationType {
  case addition
  case substraction
  case multiplication

  var process: CalculationProcess {
    switch self {
    case .addition:
      return add
    case .substraction:
      return substract
    case .multiplication:
      return multiply
    }
  }

  func calculate(input: Input) -> Result {
    return self.process(input)
  }

  private func add(_ input: Input) -> Result {
    let result = input.rest.reduce(input.first) { partialResult, nextValue in
      return partialResult + nextValue
    }
    return result
  }

  private func substract(_ input: Input) -> Result {
    let result = input.rest.reduce(input.first) { partialResult, nextValue in
      return partialResult - nextValue
    }
    return result
  }

  private func multiply(_ input: Input) -> Result {
    let result = input.rest.reduce(input.first) { partialResult, nextValue in
      return partialResult * nextValue
    }
    return result
  }

}

