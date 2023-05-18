//
//  swiftui_quiz_gameApp.swift
//  swiftui-quiz-game
//
//  Created by Jerome Bach on 18/05/2023.
//

import SwiftUI

@main
struct swiftui_quiz_gameApp: App {
    @StateObject private var navigationState = NavigationState()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $navigationState.routes) {
                IndroductionView()
                    .navigationDestination(for: Routes.self) { route in
                        switch route {
                        case .mainNavigation(let routes):
                            MainRouter(routes: routes).configure()
                        }
                    }
            }
            .environmentObject(navigationState)
        }
    }
}
