//
//  MainRouter.swift
//  swiftui-quiz-game
//
//  Created by Jerome Bach on 18/05/2023.
//

import SwiftUI

struct MainRouter {
    let routes: Routes.QuizRoutes
    
    @ViewBuilder
    func configure() -> some View {
        switch routes {
        case .question(let questions, let questionNumber):
            QuestionView(questions: questions, questionNumber: questionNumber)
        case .results(let correctAnswers, let numberOfQuestions):
            ResultsView(correctAnswers: correctAnswers, numberOfQuestions: numberOfQuestions)
        }
    }
}
