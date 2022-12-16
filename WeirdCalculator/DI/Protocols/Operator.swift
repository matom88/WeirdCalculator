//
//  Operator.swift
//  WeirdCalculator
//
//  Created by Mauricio Torres Mejia on 28.10.22.
//

import Foundation

protocol Operator {
    func operate(firstValue: Int, rest: [Int]) -> Int
}
