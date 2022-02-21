//
//  SourceLinkView.swift
//  WyyK Fructus
//
//  Created by Wykee Njenga on 2/21/22.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        
        GroupBox(){
            HStack{
                Text("Content Source")
                Spacer()
                Link("vINT.toys", destination: URL(string: "https://vint.toys")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
