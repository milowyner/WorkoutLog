//
//  WorkoutList.swift
//  Workout Log
//
//  Created by Milo Wyner on 4/30/20.
//  Copyright © 2020 Milo Wyner. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var workouts: [Workout] = Placeholder.workoutList
    @Published var exerciseTypes: Set<ExerciseType> = [
        ExerciseType(name: "Squat"),
        ExerciseType(name: "Bench Press"),
        ExerciseType(name: "Push Up")
    ]
}
