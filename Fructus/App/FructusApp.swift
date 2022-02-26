//
//  FructusApp.swift
//  Fructus
//
//  Created by Wykee Njenga on 11/27/21.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage("isOnBoarding") var isOnboarding: Bool = false
    
    var body: some Scene {
        WindowGroup {
            
            if isOnboarding{
                OnBoardingView()
               
            }else{
                ContentView()
            }
            
            
        }
    }
}
