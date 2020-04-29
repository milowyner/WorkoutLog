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
    
    var body: some View {
        VStack {
            HStack {
                Text("Workout Log")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
            }
            Spacer()
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
