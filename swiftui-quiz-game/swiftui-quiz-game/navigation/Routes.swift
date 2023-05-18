//
//  Routes.swift
//  swiftui-quiz-game
//
//  Created by Jerome Bach on 18/05/2023.
//

import Foundation

enum Routes: Hashable {
    case mainNavigation(QuizRoutes)
    
    enum QuizRoutes: Hashable {
        case question([Question], Int)
        case results(correctAnswers: Int, numberOfQuestions: Int)
    }
}
