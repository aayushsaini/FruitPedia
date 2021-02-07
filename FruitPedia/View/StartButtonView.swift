//
//  StartButtonView.swift
//  FruitPedia
//
//  Created by Aayush Saini on 07/02/21.
//

import SwiftUI

struct StartButtonView: View {
    //Mark - Properties
    //Mark - Body
    var body: some View {
        Button(action: {print("Exit the onboarding")}) {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.55))
        } // Button
        .accentColor(Color.white)
    }
}


//Mark - Preview
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
