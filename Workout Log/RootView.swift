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
                    .transition(.asymmetric(
                        insertion:
                            AnyTransition.opacity.combined(with:
                            AnyTransition.scale(scale: 0.9)).combined(with:
                            AnyTransition.offset(
                                x: (UIScreen.main.bounds.width / 2 - 150) / 4,
                                y: (UIScreen.main.bounds.height / 2 - 48) / 4)),
                        removal:
                            AnyTransition.opacity.combined(with:
                            AnyTransition.scale(scale: 0.9))
                    )
                )
            }
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView().environmentObject(CurrentPage())
    }
}
