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
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack {
                ForEach(userData.exerciseTypes.sorted { $0.name < $1.name }, id: \.self) { type in
                    HStack {
                        CustomButton(size: .medium, text: type.name)
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
        .environmentObject(UserData())
    }
}
