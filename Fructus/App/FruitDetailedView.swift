//
//  FruitDetailedView.swift
//  WyyK Fructus
//
//  Created by Wykee Njenga on 2/21/22.
//

import SwiftUI

struct FruitDetailedView: View {
    var fruit: Fruit
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                
                VStack(alignment: .center, spacing: 20){
                    //Header
                    
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .center, spacing: 20) {
                        
                        //title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .foregroundColor(fruit.gradientColors[1])
                            .fontWeight(.heavy)
                    
                        //Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //nutrients
                        FruitNutrientView(fruit: fruit)
                        
                        //subheading
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                    
                        //Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //link
                        SourceLinkView()
                            .padding(.top, 20)
                            .padding(.bottom, 40)
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }
                
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }
            .edgesIgnoringSafeArea(.top)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct FruitDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailedView(fruit: fruitData[0])
    }
}
