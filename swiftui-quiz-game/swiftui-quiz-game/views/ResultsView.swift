//
//  ResultsView.swift
//  swiftui-quiz-game
//
//  Created by Jerome Bach on 18/05/2023.
//

import Foundation
import SwiftUI

struct ResultsView: View {
    @EnvironmentObject private var navigationState: NavigationState
    let correctAnswers: Int
    let numberOfQuestions: Int
    
    var body: some View {
        ZStack {
            LinearGradient.backgroundGradient.ignoresSafeArea()
            VStack(spacing: 10) {
                Text("Game result")
                    .font(.primaryTitle)
                Text("\(correctAnswers)/\(numberOfQuestions)")
                    .font(.primaryTitle)
                Button("Play again") {
                    navigationState.routes.removeAll()
                }
                .buttonStyle(CustomButtonStyle())
            }
        }
        .foregroundColor(.white)
        .toolbar(.hidden)
    }
}

struct ResultsView_Previews: PreviewProvider {
    static var previews: some View {
        ResultsView(correctAnswers: 2,
                    numberOfQuestions: 5)
    }
}
