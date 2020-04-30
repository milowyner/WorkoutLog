//
//  WorkoutView.swift
//  Workout Log
//
//  Created by Milo Wyner on 4/29/20.
//  Copyright © 2020 Milo Wyner. All rights reserved.
//

import SwiftUI

struct WorkoutView: View {
    var body: some View {
        VStack(spacing: 16) {
            HStack {
                Text("My Workout")
                    .fontWeight(.semibold)
                Spacer()
            }
            HStack {
                VStack(alignment: .leading, spacing: 16) {
                    Text("Squat")
                    Text("Bench Press")
                }
                Spacer()
                VStack(spacing: 16) {
                    Text("3 sets")
                    Text("2 sets")
                }
                Spacer()
            }
            .padding(.leading, 8)
            .font(.system(size: 12, weight: .semibold))
        }
        .padding(16)
        .padding(.bottom, 8)
        .background(Color.containerBackground)
        .cornerRadius(12)
    }
}

struct WorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView()
            .previewLayout(.sizeThatFits)
            .frame(width: 375)
    }
}
