//
//  ResourceTab.swift
//  MindPaw
//
//  Created by Mr. Daryl Shahid on 7/10/23.
//

import SwiftUI

struct ResourceTab: View {
    var body: some View {
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(hex: "550527"), Color(hex: "FAA613")]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack {
                VStack {
                    Text("WE ARE THERE FOR YOU!")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.orange)
                        .padding(.bottom, 20)
                    Text("Resources")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.bottom, 50)
                    HStack {

                        VStack {
                            ResourceItemView(title: "Paw Talks")
                            ResourceItemView(title: "Paw Books")
                            ResourceItemView(title: "Paw Quotes")
                            ResourceItemView(title: "Tools & Suggestions")
                        }
                        Spacer()

                    }
                    .padding(.horizontal, 50)
                    .padding(.vertical, 50)
                    .background(Color("Burgundy"))
                    .cornerRadius(20)
                    .shadow(color: .black.opacity(0.2), radius: 20, x: 0, y: 10)
                    
                    
                }
                .padding()
                .background(Color.black.opacity(0.05).edgesIgnoringSafeArea(.all))
            }
        }
    }
    
}

struct ResourceItemView: View {
    let title: String
    
    var body: some View {
       
        HStack {
            // NavigationLink{ // Remeber to replace "Destination") with your destination view
            
            /* NavigationLink{
             GoalDetail()
             
             } label:{
             GoalCard(goal: goal)
             
             }*/
            
            NavigationLink{
                PawQuotes()
            } label: {
                
                Circle()
                    .foregroundColor(.green)
                    .frame(width: 50, height: 50)
                    .shadow(radius: 10)
                
            }
                Text(title)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
            
            
        }
            .padding(.bottom, 10)
            
        
    }
}

struct ResourceTab_Previews: PreviewProvider {
    static var previews: some View {
        ResourceTab()
    }
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
