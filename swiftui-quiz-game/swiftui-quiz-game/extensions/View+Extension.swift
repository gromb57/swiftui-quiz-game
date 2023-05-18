//
//  View+Extension.swift
//  swiftui-quiz-game
//
//  Created by Jerome Bach on 18/05/2023.
//

import Foundation
import SwiftUI

extension View {
    @ViewBuilder func ifElse<Content: View, ElseContent: View>(_ condition: Bool,
                                                               transform: (Self) -> Content,
                                                               elseTransform: (Self) -> ElseContent) -> some View {
        if condition {
            transform(self)
        } else {
            elseTransform(self)
        }
    }
}
