////
////  OperationType.swift
////  Copyright © 2021 Just Eat Takeaway. All rights reserved.
////
//
//import Foundation
//
//
//
//enum OperationType {
//  case addition
//  case substraction
//
//  func calculate(input: Input) -> Result {
//    return self.process(input)
//  }
//}
//
//extension OperationType {
//  private var process: CalculationProcess {
//    switch self {
//    case .addition:
//      return add
//    case .substraction:
//      return substract
//    }
//  }
//
//  private func add(_ input: Input) -> Result {
//    let resultValue = input.rest.reduce(input.first) { partialResult, nextValue in
//      return partialResult + nextValue
//    }
//    return Result(outputNumber: resultValue)
//  }
//
//  private func substract(_ input: Input) -> Result {
//    let resultValue = input.rest.reduce(input.first) { partialResult, nextValue in
//      return partialResult - nextValue
//    }
//    return Result(outputNumber: resultValue)
//  }
//
//}
