//
//  ExerciseSet.swift
//  Workout Log
//
//  Created by Milo Wyner on 4/29/20.
//  Copyright © 2020 Milo Wyner. All rights reserved.
//

import Foundation

struct ExerciseSet: Identifiable {
    let id = UUID()
    var weight: Double
    var reps: Int
}
