//
//  Workout.swift
//  Workout Log
//
//  Created by Milo Wyner on 4/29/20.
//  Copyright © 2020 Milo Wyner. All rights reserved.
//

import Foundation

struct Workout: Identifiable {
    var id = UUID()
    var title: String
    var exercises = [Exercise]()
}
