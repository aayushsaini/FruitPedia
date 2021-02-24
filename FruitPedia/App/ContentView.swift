//
//  ContentView.swift
//  FruitPedia
//
//  Created by Aayush Saini on 05/02/21.
//

import SwiftUI

struct ContentView: View {
    //MARK: PROPERTIES
    
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    //MARK: BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action:{
                        isShowingSettings = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    }  //: Button
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
            )
        }//MARK: NavigationView
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


//MARK: PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
            
    }
}
