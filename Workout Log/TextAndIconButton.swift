//
//  TextAndIconButton.swift
//  Workout Log
//
//  Created by Milo Wyner on 4/19/20.
//  Copyright © 2020 Milo Wyner. All rights reserved.
//

import SwiftUI

struct TextAndIconButton: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 16)
            .fill(Color.buttonBackground)
        .overlay(
            Text("Create New Workout"))
    }
}

struct TextAndIconButton_Previews: PreviewProvider {
    static var previews: some View {
        TextAndIconButton()
            .frame(width: 200, height: 50, alignment: .center)
    }
}
