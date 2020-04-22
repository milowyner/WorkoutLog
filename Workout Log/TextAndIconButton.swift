//
//  TextAndIconButton.swift
//  Workout Log
//
//  Created by Milo Wyner on 4/19/20.
//  Copyright © 2020 Milo Wyner. All rights reserved.
//

import SwiftUI

struct TextAndIconButton: View {
    var action: () -> Void
    var text: String?
    var icon: String?
    
    var body: some View {
        Button(action: action, label: {
            HStack(spacing: 8.0) {
                if text != nil {
                    Text(text!)
                        .fontWeight(.semibold)
                        .padding([.leading, .trailing], 4.0)
                        .frame(height: 24.0)
                }
                if icon != nil {
                    Image(icon!)
                }
            }
            .foregroundColor(.primary)
            .padding(12.0)
            .background(
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.buttonBackground)
            )
        })
    }
}

struct TextAndIconButton_Previews: PreviewProvider {
    static var previews: some View {
        TextAndIconButton(action: {}, text: "Create New Workout", icon: "icon-plus")
    }
}
