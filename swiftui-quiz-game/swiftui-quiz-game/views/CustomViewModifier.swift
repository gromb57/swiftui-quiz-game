//
//  CustomViewModifier.swift
//  swiftui-quiz-game
//
//  Created by Jerome Bach on 18/05/2023.
//

import Foundation
import SwiftUI

struct CustomViewModifier: ViewModifier {
    var roundedCornes: CGFloat
    var startColor: Color
    var endColor: Color
    var textColor: Color
    
    func body(content: Content) -> some View {
        content
            .padding()
            .background(
                LinearGradient(gradient: Gradient(colors: [startColor, endColor]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
            )
            .cornerRadius(roundedCornes)
            .padding(3)
            .font(.system(size: 18, weight: .bold, design: .rounded))
            .foregroundColor(textColor)
            .shadow(radius: 10)
    }
}
