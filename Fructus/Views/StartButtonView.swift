//
//  StartButtonView.swift
//  Fructus
//
//  Created by Wykee Njenga on 12/9/21.
//

import SwiftUI

struct StartButtonView: View {
    
    @AppStorage("onboarding") var showList: Bool = false
    
    
    //properties
    
    //body
    
    var body: some View {
        Button(action:{
            print("Exit the onboarding")
            
            showList = true
            
            }){
            HStack(spacing: 8) {
                Text("Start ")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(.white, lineWidth: 1.25)
                )
        }
        //: BUTTON
        .accentColor(.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
