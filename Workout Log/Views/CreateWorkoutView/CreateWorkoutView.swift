//
//  CreateWorkoutView.swift
//  Workout Log
//
//  Created by Milo Wyner on 4/22/20.
//  Copyright © 2020 Milo Wyner. All rights reserved.
//

import SwiftUI

struct CreateWorkoutView: View {
    @EnvironmentObject var currentPage: CurrentPage
    @EnvironmentObject var workoutList: UserData
    
    @State var showingAddExerciseView = false
    
    @State var workoutTitle: String = ""
    @State var exercises = [Placeholder.exercise1, Placeholder.exercise2]
    
    @State var exerciseToBeAdded: Exercise?
    
    var body: some View {
        ZStack {
            VStack(spacing: .paddingMedium) {
                HStack {
                    TextField("Enter Title...", text: $workoutTitle)
                        .font(.system(
                            size: UIFont.preferredFont(forTextStyle: .largeTitle).pointSize,
                            weight: .semibold))
                    Spacer()
                }
                .padding([.leading, .trailing, .top], .paddingLarge)
                ScrollView(.vertical, showsIndicators: true) {
                    VStack(spacing: .paddingMedium) {
                        ForEach(exercises) { exercise in
                            ExerciseView(exercise: exercise)
                        }
                    }
                    .padding(.top, .paddingMedium)
                    .padding(.bottom, 48 + .paddingLarge * 2)
                }
                .padding([.leading, .trailing], .paddingMedium)
            }
            VStack {
                Spacer()
                HStack {
                    CustomButton(size: .large, icon: workoutTitle.isEmpty ? "icon-cancel" : "icon-checkmark") {
                        if self.workoutTitle.isEmpty == false {
                            let workout = Workout(title: self.workoutTitle)
                            self.workoutList.workouts.append(workout)
                        }
                        withAnimation() {
                            self.currentPage.isMainView = true
                        }
                    }
                    Spacer()
                    CustomButton(size: .large, text: "Add Exercise", icon: "icon-plus") {
                        withAnimation {
                            self.showingAddExerciseView = true
                        }
                    }
                }
                .padding(.paddingLarge)
            }
            
            VStack {
                Spacer()
                if showingAddExerciseView {
                    AddExerciseView(exerciseToBeAdded: $exerciseToBeAdded, isShowing: $showingAddExerciseView)
                        .padding(.paddingMedium)
                        .frame(height: UIScreen.main.bounds.height * 0.5)
                        .transition(AnyTransition.scale(scale: 0.4).combined(with:
                            AnyTransition.opacity.combined(with:
                                AnyTransition.offset(
                                    x: UIScreen.main.bounds.width / 5,
                                    y: UIScreen.main.bounds.height / 10))))
                        .onDisappear {
                            if let exercise = self.exerciseToBeAdded {
                                withAnimation {
                                    self.exercises.append(exercise)
                                }
                                self.exerciseToBeAdded = nil
                            }
                    }
                }
            }
        }
    }
}

struct CreateWorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        CreateWorkoutView().environmentObject(UserData())
    }
}
