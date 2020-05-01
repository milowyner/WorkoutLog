//
//  ChooseExerciseList.swift
//  Workout Log
//
//  Created by Milo Wyner on 4/26/20.
//  Copyright © 2020 Milo Wyner. All rights reserved.
//

import SwiftUI

struct ChooseExerciseScrollView: View {
    var exercises = [String](repeating: "Exercise", count: 15)
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack {
                ForEach(exercises, id: \.self) { exercise in
                    HStack {
                        CustomButton(size: .medium, text: exercise)
                        Spacer()
                    }
                }
                .padding(.bottom, .paddingMedium)
            }
        }
    }
}

struct ChooseExerciseList_Previews: PreviewProvider {
    static var previews: some View {
        ChooseExerciseScrollView()
            .previewLayout(.fixed(width: 300, height: 300))
    }
}