//
//  OnBoardingView.swift
//  Fructus
//
//  Created by Wykee Njenga on 12/9/21.
//

import SwiftUI

struct OnBoardingView: View {
    
    //:properties
    var fruit: [Fruit] = fruitData
    
    //:Body
    var body: some View {
        
        TabView{
            ForEach(fruit[0...5]){ item in
                
                FruitCardView(fruit: item)

            }
            
            
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
    
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(fruit: fruitData)
    }
}
