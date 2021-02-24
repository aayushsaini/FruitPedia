//
//  SettingsLabelView.swift
//  FruitPedia
//
//  Created by Aayush Saini on 24/02/21.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK: Properties
    var labelText: String
    var labelImage: String
    
    //MARK: Body
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Spacer()
                Image(systemName: labelImage)
        }
    }
}

//MARK: Preview
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "FruitPedia", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
