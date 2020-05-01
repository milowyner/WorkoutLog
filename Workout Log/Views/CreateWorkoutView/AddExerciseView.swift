//
//  AddExerciseView.swift
//  Workout Log
//
//  Created by Milo Wyner on 4/26/20.
//  Copyright © 2020 Milo Wyner. All rights reserved.
//

import SwiftUI

struct AddExerciseView: View {
    @EnvironmentObject var userData: UserData
    @Binding var isShowing: Bool
    
    var body: some View {
        VStack(spacing: 0.0) {
            ChooseExerciseScrollView()
                .padding([.top, .leading, .trailing], .paddingMedium)
            HStack {
                CustomButton(size: .medium, text: "Create New", icon: "icon-plus")
                Spacer()
                CustomButton(size: .medium, icon: "icon-cancel") {
                    withAnimation {
                        self.isShowing = false
                    }
                }
            }
            .padding(.paddingMedium)
        }
        .background(Color.containerBackground)
        .cornerRadius(12.0)
    }
}

struct AddExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        AddExerciseView(isShowing: .constant(true))
            .previewLayout(.fixed(width: 375, height: 400))
        .environmentObject(UserData())
    }
}
