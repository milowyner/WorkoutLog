//
//  ContentView.swift
//  Workout Log
//
//  Created by Milo Wyner on 4/19/20.
//  Copyright © 2020 Milo Wyner. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Workout Log")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding([.leading, .top], 32.0)
                Spacer()
            }
            Spacer()
            HStack {
                Spacer()
                TextAndIconButton(text: "Create New Workout", icon: "icon-plus")
            }
            .padding(32.0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
