//
//  Exercise.swift
//  Workout Log
//
//  Created by Milo Wyner on 4/29/20.
//  Copyright © 2020 Milo Wyner. All rights reserved.
//

import Foundation

struct Exercise: Identifiable {
    let id = UUID()
    var type: ExerciseType
    var sets = [ExerciseSet]()
    var name: String {
        get {
            type.name
        }
        set {
            type.name = newValue
        }
    }
    var numberOfSets: Int {
        sets.count
    }
}
