//
//  ExerciseView.swift
//  Workout Log
//
//  Created by Milo Wyner on 4/29/20.
//  Copyright © 2020 Milo Wyner. All rights reserved.
//

import SwiftUI

fileprivate let addSetButton = CustomButton(size: .small, text: "Add Set", icon: "icon-plus")

struct SetTextInput: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.system(size: addSetButton.fontSize, weight: .semibold))
            .frame(height: addSetButton.fontSize)
            .frame(maxWidth: .infinity)
            .padding(6)
            .background(Color.textInputBackground)
            .cornerRadius(8)
    }
}

struct ExerciseView: View {
    
    let exercise: Exercise
    
    var body: some View {
        VStack(spacing: .paddingMedium) {
            HStack {
                Text(exercise.name)
                    .fontWeight(.semibold)
                Spacer()
            }
            HStack(alignment: .bottom, spacing: .paddingMedium) {
                VStack(spacing: .paddingSmall) {
                    ForEach(0..<exercise.numberOfSets) { index in
                        Text("\(index + 1)")
                            .frame(height: addSetButton.fontSize)
                            .padding([.top, .bottom], 6)
                            .padding(.leading, .paddingSmall)
                    }
                }
                VStack(spacing: .paddingSmall) {
                    ForEach(exercise.sets) { set in
                        SetTextInput(text: "\(set.weight.removeZeroes()) lbs")
                    }
                }
                VStack(spacing: .paddingSmall) {
                    ForEach(exercise.sets) { set in
                        SetTextInput(text: "\(set.reps) reps")
                    }
                }
                if exercise.numberOfSets == 0 {
                    Spacer()
                }
                addSetButton
            }
            .font(.system(size: addSetButton.fontSize, weight: .semibold))
        }
        .padding(.paddingMedium)
        .background(Color.containerBackground)
        .cornerRadius(12)
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(exercise: Exercise(
            type: ExerciseType(name: "Squat"),
            sets: [ExerciseSet](repeating: ExerciseSet(weight: 100, reps: 8), count: 3)))
            .previewLayout(.sizeThatFits)
            .frame(width: 375)
    }
}
