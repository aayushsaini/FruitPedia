//
//  FruitPediaApp.swift
//  FruitPedia
//
//  Created by Aayush Saini on 05/02/21.
//

import SwiftUI

@main
struct FruitPediaApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnBoardingView()
            } else {
                ContentView()
            }
        }
    }
}
