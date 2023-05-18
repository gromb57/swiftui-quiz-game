//
//  CustomButtonStyle.swift
//  swiftui-quiz-game
//
//  Created by Jerome Bach on 18/05/2023.
//

import Foundation
import SwiftUI

struct CustomButtonStyle: ButtonStyle {
    var cornerRadius: CGFloat = 40
    var answerType: AnswerType = .unvoted
    
    @ViewBuilder
    var backgroundColor: some View {
        switch answerType {
        case .unvoted:
            LinearGradient.backgroundGradient
        case .correct:
            Color.green
        case .bad:
            Color.red
        }
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 18, weight: .bold, design: .rounded))
            .padding(8)
            .background(backgroundColor)
            .cornerRadius(cornerRadius)
            .foregroundColor(configuration.isPressed ? .white.opacity(0.5) : .white)
            .shadow(radius: 10)
    }
}
