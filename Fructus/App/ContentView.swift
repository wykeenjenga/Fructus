//
//  ContentView.swift
//  Fructus
//
//  Created by Wykee Njenga on 11/27/21.
//

import SwiftUI

struct ContentView: View {
    var fruit: [Fruit] = fruitData
    
    var body: some View {
        
        NavigationView{
            List{
                ForEach(fruit.shuffled()){
                    item in
                    
                    NavigationLink(destination: FruitDetailedView(fruit: item)){
                        
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
        
            .navigationTitle("WyyK Fruits")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruit: fruitData)
    }
}
