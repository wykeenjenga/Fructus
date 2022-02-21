//
//  FructusApp.swift
//  Fructus
//
//  Created by Wykee Njenga on 11/27/21.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage("onboarding") var showList: Bool = false
    
    var body: some Scene {
        WindowGroup {
            
            if showList{
                OnBoardingView()
            }else{
                ContentView()
            }
            
            
        }
    }
}
