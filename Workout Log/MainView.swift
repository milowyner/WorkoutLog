//
//  MainView.swift
//  Workout Log
//
//  Created by Milo Wyner on 4/19/20.
//  Copyright © 2020 Milo Wyner. All rights reserved.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var currentPage: CurrentPage
    
    var workouts = [Placeholder.workout1, Placeholder.workout2, Placeholder.workout1, Placeholder.workout2]
    
    var body: some View {
        VStack(spacing: 16) {
            HStack {
                Text("Workout Log")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
            }
            ScrollView(.vertical, showsIndicators: true) {
                VStack(spacing: 16) {
                    ForEach(workouts) { workout in
                        WorkoutView(workout: workout)
                    }
                }
            }
            .padding([.leading, .trailing], -16)
            HStack {
                Spacer()
                CustomButton(size: .large, text: "Create New Workout", icon: "icon-plus") {
                    withAnimation() {
                        self.currentPage.isMainView = false
                    }
                }
                .opacity(currentPage.isMainView ? 1 : 0)
                .scaleEffect(currentPage.isMainView ? 1 : 1.5)
            }
        }
        .padding(32.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().environmentObject(CurrentPage())
    }
}
