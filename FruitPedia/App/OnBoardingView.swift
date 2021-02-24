//
//  OnBoardingView.swift
//  FruitPedia
//
//  Created by Aayush Saini on 07/02/21.
//

import SwiftUI

struct OnBoardingView: View {
    // Mark Properties
    var fruits: [Fruit] = fruitsData
    // Mark Body
    var body: some View {
        TabView{
            ForEach(fruits[0...5]) {item in
                FruitCardView(fruit: item)
            } // Loop
        } // Tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 10)
    }
}

// Mark Preview

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(fruits: fruitsData)
            .preferredColorScheme(.dark)
    }
}
