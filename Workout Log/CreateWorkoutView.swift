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
    @State var workoutTitle: String = ""
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter Title...", text: $workoutTitle)
                    .font(.system(
                        size: UIFont.preferredFont(forTextStyle: .largeTitle).pointSize,
                        weight: .semibold))
                Spacer()
            }
            Spacer()
            HStack {
                CustomButton(size: .large, icon: "icon-checkmark") {
                    print("Done button tapped")
                    withAnimation() {
                        self.currentPage.isMainView = true
                    }
                }
                Spacer()
                CustomButton(size: .large, text: "Add Exercise", icon: "icon-plus") {
                    print("Add exercise button tapped")
                }
            }
        }
        .padding(.paddingLarge)
    }
}

struct CreateWorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        CreateWorkoutView()
    }
}
