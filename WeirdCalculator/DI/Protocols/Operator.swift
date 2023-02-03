//
//  Operator.swift
//  WeirdCalculator
//
//  Created by Mauricio Torres Mejia on 28.10.22.
//

import Foundation

typealias CalculationProcess = (Input) -> Result

protocol Operation {

  var process: CalculationProcess { get }

}
