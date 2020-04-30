//
//  WorkoutView.swift
//  Workout Log
//
//  Created by Milo Wyner on 4/29/20.
//  Copyright © 2020 Milo Wyner. All rights reserved.
//

import SwiftUI

struct WorkoutView: View {
    
    let workout: Workout
    
    var body: some View {
        VStack(spacing: .paddingMedium) {
            HStack {
                Text(workout.title)
                    .fontWeight(.semibold)
                Spacer()
            }
            HStack {
                VStack(alignment: .leading, spacing: .paddingMedium) {
                    ForEach(workout.exercises, id: \.name) { exercise in
                        Text(exercise.name)
                    }
                }
                Spacer()
                VStack(spacing: .paddingMedium) {
                    ForEach(workout.exercises, id: \.name) { exercise in
                        Text("\(exercise.numberOfSets) sets")
                    }
                }
                Spacer()
            }
            .padding(.leading, .paddingSmall)
            .font(.system(size: 12, weight: .semibold))
        }
        .padding(.paddingMedium)
        .padding(.bottom, .paddingSmall)
        .background(Color.containerBackground)
        .cornerRadius(12)
    }
}

struct WorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView(workout: Workout(title: "My Workout", exercises: [
            Exercise(type: ExerciseType(name: "Squat"),
                     sets: [ExerciseSet](repeating:
                        ExerciseSet(weight: 0, reps: 0), count: 3)),
            
            Exercise(type: ExerciseType(name: "Bench Press"),
                     sets: [ExerciseSet](repeating:
                        ExerciseSet(weight: 0, reps: 0), count: 2))
        ]))
            .previewLayout(.sizeThatFits)
            .frame(width: 375)
    }
}
