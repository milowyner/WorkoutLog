//
//  Extensions.swift
//  Workout Log
//
//  Created by Milo Wyner on 4/30/20.
//  Copyright © 2020 Milo Wyner. All rights reserved.
//

import Foundation

extension Double {
    func removeZeroes() -> String {
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 2
        return formatter.string(from: NSNumber(value: self))!
    }
}
