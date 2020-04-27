//
//  RootView.swift
//  Workout Log
//
//  Created by Milo Wyner on 4/26/20.
//  Copyright © 2020 Milo Wyner. All rights reserved.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject var currentPage: CurrentPage
    
    var body: some View {
        VStack {
            if currentPage.isMainView {
                MainView()
            } else {
                CreateWorkoutView()
            }
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView().environmentObject(CurrentPage())
    }
}
