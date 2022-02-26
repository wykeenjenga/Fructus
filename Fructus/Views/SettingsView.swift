//
//  SettingsView.swift
//  WyyK Fructus
//
//  Created by Wykee Njenga on 2/22/22.
//

import SwiftUI

struct SettingsView: View {
    
    //properties
    @Environment(\.presentationMode) var presentationMode
    
    @AppStorage("isOnBoarding") var isOnboarding: Bool = false
    
    
    var body: some View {
        
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20){
                    
                    
                    //section
                    GroupBox(
                    label:
                        LabelView(labelText: "Wyyk Fruits", labelImage: "info.circle")
                    ){
                        Divider().padding(.vertical, 4)
                        Text("Hello world")
                        HStack(alignment: .center, spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text(" As intact sarcotestas or juice, pomegranates are used in baking, cooking, juice blends, meal garnishes, smoothies, and alcoholic beverages, such as cocktails and wine.")
                                .font(.footnote)
                        }
                    }
                    
                    //section
                    GroupBox(
                        label: LabelView(labelText: "Customization", labelImage: "paintbrush")
                    ){
                        Divider().padding(.vertical, 4)
                        
                        Text("Restart app and receive notifications")
                            .padding(.vertical, 8)
                            .frame(minHeight: 80)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                         
                        Toggle(isOn: $isOnboarding){
                                
                            if isOnboarding{
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                                
                            }else{
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.red)
                                
                            }
                        }
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground)
                                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous)))
                    }
                    
                    //section
                    GroupBox(
                        label: LabelView(labelText: "Application", labelImage: "apps")
                        
                    ){
                        SettingsRowView(name: "Developer", content:  "Wycliff / N")
                        SettingsRowView(name: "Twitter", linkLabel: "Follow me", linkDestination:  "https://twitter.com/wycliffnjenga2")
                        SettingsRowView(name: "Website", linkLabel: "wyksoftsinc.com",
                                        linkDestination: "wyksoftsinc.web.app")
                        SettingsRowView(name: "Version", content:  "V 1.0.1")
                        
                    }
                    

                }
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button( action:{
                            presentationMode.wrappedValue.dismiss()
                        }){
                            Image(systemName: "xmark")
                        }
                )
                .padding()
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
