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
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    //MARK: BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    //MARK: Section - 1
                    GroupBox(
                        label: SettingsLabelView(labelText: "FruitPedia", labelImage: "info.circle")) {
                        Divider()
                            .padding(.vertical, 4)
                        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10, content: {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("FruitPedia is simple app that contains the information of several fruits. The information includes the nutritional values and detailed information available from the wikipedia")
                                .font(.footnote)
                        })
                    }
                    
                    //MARK: Section - 2
                    GroupBox(
                        label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush"))
                        {
                        Divider().padding(.vertical, 4)
                        Text("You can revisit the onboarding screen of this application by using this toggle. This resets the application and thus you can see the landing screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Swipe Down".uppercased())
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    
                    //MARK: Section - 3
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone"))
                        {
                            SettingsRowView(name: "Developer", content: "Aayush Saini")
                            SettingsRowView(name: "Designer", content: "Aayush Saini")
                            SettingsRowView(name: "Website", linkLabel: "Aayush Saini", linkDestination: "aayushsaini.com")
                            SettingsRowView(name: "Linkedin", linkLabel: "Profile Link", linkDestination: "linkedin.com/in/aayush-saini")
                            SettingsRowView(name: "Github", linkLabel: "Github Link", linkDestination: "github.com/aayushsaini")
                            SettingsRowView(name: "Covid-19 Tracker", linkLabel: "CovidNearMe", linkDestination: "covidnearme.in")
                            SettingsRowView(name: "SwiftUi", content: "2.0")
                            SettingsRowView(name: "App Version", content: "1.1.0")
                            
                        }
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
