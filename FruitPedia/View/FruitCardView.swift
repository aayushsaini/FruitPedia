//
//  FruitCardView.swift
//  FruitPedia
//
//  Created by Aayush Saini on 07/02/21.
//

import SwiftUI

struct FruitCardView: View {
    
    //Mark - Properties
    @State private var isAnimating: Bool = false
    
    //Mark - Body
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // Fruit Image
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.21), radius: 8, x:6, y:8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                // Fruit Title
                Text("Blueberry")
                    .foregroundColor(Color.white)
                    .fontWeight(.heavy)
                    .font(.largeTitle)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                // Fruit Headline
                Text("Blueberries are sweet, nutritious and wildy popular fruits all over the world.")
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth:480)
                
                
                // Button Start
                StartButtonView()
            }
        } // VStack
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(30)
        .padding(.horizontal, 20)
    } // ZStack
}

//Mark - Preview

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
