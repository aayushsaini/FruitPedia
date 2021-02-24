//
//  SettingsView.swift
//  FruitPedia
//
//  Created by Aayush Saini on 24/02/21.
//

import SwiftUI

struct SettingsView: View {
    //MARK: Properties
    @Environment(\.presentationMode) var presentationMode
    
    //MARK: BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    //MARK: Section - 1
                    GroupBox(
                        label: HStack {
                            Text("FruitPedia".uppercased())
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                Spacer()
                                Image(systemName: "info.circle")
                        }) {
                        Text("Bruh")
                    }
                    //MARK: Section - 2
                    
                    //MARK: Section - 3
                }
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                )
                .padding()
            } //: ScrollView
        } //: Navigation
    }
}

//MARK: Preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
