//
//  LabelView.swift
//  WyyK Fructus
//
//  Created by Wykee Njenga on 2/22/22.
//

import SwiftUI

struct LabelView: View {
    var labelText: String
    var labelImage: String
    
    var body: some View {
        HStack{
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView(labelText: "WyyK Softs", labelImage: "info.cricle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
