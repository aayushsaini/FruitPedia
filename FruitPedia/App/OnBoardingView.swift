//
//  OnBoardingView.swift
//  FruitPedia
//
//  Created by Aayush Saini on 07/02/21.
//

import SwiftUI

struct OnBoardingView: View {
    // Mark Properties
    // Mark Body
    var body: some View {
        TabView{
            ForEach(0..<5) {item in
                FruitCardView()
            } // Loop
        } // Tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 10)
    }
}

// Mark Preview

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
