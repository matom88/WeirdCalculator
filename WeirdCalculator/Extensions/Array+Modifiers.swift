//
//  Array+Modifiers.swift
//  Copyright © 2021 Just Eat Takeaway. All rights reserved.
//

import Foundation

extension Array {
    @inlinable
    public mutating func popFirst() -> Element? {
        if isEmpty {
            return nil
        } else {
            return removeFirst()
        }
    }
}
