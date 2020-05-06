//
//  ChooseExerciseList.swift
//  Workout Log
//
//  Created by Milo Wyner on 4/26/20.
//  Copyright © 2020 Milo Wyner. All rights reserved.
//

import SwiftUI

struct ChooseExerciseScrollView: View {
    @EnvironmentObject var userData: UserData
    
    @Binding var exerciseToBeAdded: Exercise?
    @Binding var isShowing: Bool
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack {
                ForEach(userData.exerciseTypes.sorted { $0.name < $1.name }, id: \.self) { type in
                    HStack {
                        CustomButton(size: .medium, text: type.name) {
                            self.exerciseToBeAdded = Exercise(type: type)
                            withAnimation {
                                self.isShowing = false
                            }
                        }
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
        ChooseExerciseScrollView(exerciseToBeAdded: .constant(nil), isShowing: .constant(true))
            .previewLayout(.fixed(width: 300, height: 300))
            .environmentObject(UserData())
    }
}
