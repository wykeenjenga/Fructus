//
//  ContentView.swift
//  Fructus
//
//  Created by Wykee Njenga on 11/27/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingSettings: Bool = false
    
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
            .navigationBarItems(
                trailing:
                    Button( action:{
                        isShowingSettings = true
                    }){
                        Image(systemName: "slider.horizontal.3")
                    }
                    .sheet(isPresented: $isShowingSettings){
                        SettingsView()
                    }
            )
        }// end of navigation
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruit: fruitData)
    }
}
