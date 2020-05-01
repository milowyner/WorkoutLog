//
//  PlaceholderData.swift
//  Workout Log
//
//  Created by Milo Wyner on 4/29/20.
//  Copyright © 2020 Milo Wyner. All rights reserved.
//

import Foundation

struct Placeholder {
    static let workoutList = [workout1, workout2]
    
    static let exercise1 = Exercise(type: ExerciseType(name: "Squat"), sets: [
        ExerciseSet(weight: 100, reps: 8),
        ExerciseSet(weight: 100, reps: 7),
        ExerciseSet(weight: 100, reps: 6)
    ])
    
    static let exercise2 = Exercise(type: ExerciseType(name: "Bench Press"), sets: [
        ExerciseSet(weight: 85, reps: 8),
        ExerciseSet(weight: 85, reps: 8)
    ])
    
    static let workout1 = Workout(title: "My Workout", exercises: [
        Exercise(type: ExerciseType(name: "Squat"),
                 sets: [ExerciseSet](repeating:
                    ExerciseSet(weight: 0, reps: 0), count: 3)),
        
        Exercise(type: ExerciseType(name: "Bench Press"),
                 sets: [ExerciseSet](repeating:
                    ExerciseSet(weight: 0, reps: 0), count: 2))
    ])
    
    static let workout2 = Workout(title: "Another Workout", exercises: [
        Exercise(type: ExerciseType(name: "Push Up"),
                 sets: [ExerciseSet](repeating:
                    ExerciseSet(weight: 0, reps: 0), count: 4)),
        
        Exercise(type: ExerciseType(name: "Lunge"),
                 sets: [ExerciseSet](repeating:
                    ExerciseSet(weight: 0, reps: 0), count: 3)),
        
        Exercise(type: ExerciseType(name: "Squat"),
                 sets: [ExerciseSet](repeating:
                    ExerciseSet(weight: 0, reps: 0), count: 3))
    ])
}
