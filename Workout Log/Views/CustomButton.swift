//
//  CustomButton.swift
//  Workout Log
//
//  Created by Milo Wyner on 4/19/20.
//  Copyright © 2020 Milo Wyner. All rights reserved.
//

import SwiftUI

struct CustomButton: View {
    var size: ButtonSize
    var text: String?
    var icon: String?
    var action: (() -> Void)?
    
    var fontSize: CGFloat {
        switch size {
        case .small: return 12.0
        case .medium, .large: return 17.0
        }
    }
    
    private var cornerRadius: CGFloat {
        switch size {
        case .small: return 12.0
        case .medium: return 12.0
        case .large: return 16.0
        }
    }
    private var padding: CGFloat {
        switch size {
        case .small: return .paddingSmall
        case .medium: return .paddingSmall
        case .large: return .paddingMedium
        }
    }
    private var minHeight: CGFloat {
        switch size {
        case .small: return 12.0
        case .medium: return 18.0
        case .large: return 24.0
        }
    }
    
    var body: some View {
        Button(action: action ?? {}, label: {
            HStack(spacing: padding / 2) {
                if text != nil {
                    Text(text!)
                        .font(.system(size: fontSize, weight: .semibold))
                        .padding([.leading, .trailing], padding / 4)
                        .frame(height: fontSize)
                }
                if icon != nil {
                    Image(icon! + "-" + size.rawValue)
                }
            }
            .foregroundColor(.primary)
            .padding(padding * 3/4)
            .background(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(Color.buttonBackground)
            )
        })
    }
    
    enum ButtonSize: String {
        case small
        case medium
        case large
    }
}

struct TextAndIconButton_Previews: PreviewProvider {
    private static var buttonLabel = "Button Label"
    private static var plusIcon = "icon-plus"

    static var previews: some View {
        Group {
            CustomButton(size: .large, text: buttonLabel, icon: plusIcon)
                .previewDisplayName("Text and icon")
            CustomButton(size: .large, text: buttonLabel)
                .previewDisplayName("Text")
            CustomButton(size: .large, icon: plusIcon)
                .previewDisplayName("Icon")
            CustomButton(size: .medium, text: buttonLabel)
                .previewDisplayName("Medium text")
            CustomButton(size: .medium, icon: plusIcon)
                .previewDisplayName("Medium icon")
            CustomButton(size: .medium, text: buttonLabel, icon: plusIcon)
                .previewDisplayName("Medium text and icon")
            CustomButton(size: .small, text: buttonLabel)
                .previewDisplayName("Small text")
            CustomButton(size: .small, icon: plusIcon)
                .previewDisplayName("Small icon")
            CustomButton(size: .small, text: buttonLabel, icon: plusIcon)
                .previewDisplayName("Small text and icon")
        }
        .previewLayout(.fixed(width: 300, height: 100))
    }
}
