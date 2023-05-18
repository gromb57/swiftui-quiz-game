//
//  LinearGradient+Extension.swift
//  swiftui-quiz-game
//
//  Created by Jerome Bach on 18/05/2023.
//

import Foundation
import SwiftUI

extension LinearGradient {
    static var backgroundGradient: Self {
        LinearGradient(
            gradient: Gradient(colors: [Color.pink, Color.yellow]),
            startPoint: .top,
            endPoint: .bottom
        )
    }
}
