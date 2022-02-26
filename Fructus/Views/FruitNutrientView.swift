//
//  FruitNutrientView.swift
//  WyyK Fructus
//
//  Created by Wykee Njenga on 2/22/22.
//

import SwiftUI

struct FruitNutrientView: View {
    //properties
    
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protains", "Vitamins", "Minerals"]
    
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutrients value per 100g"){
                ForEach(0..<nutrients.count, id: \.self) { item in
                    
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
            
        }//BOX
    }
}

struct FruitNutrientView_Previews: PreviewProvider {
    
    static var previews: some View {
        FruitNutrientView(fruit: fruitData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
