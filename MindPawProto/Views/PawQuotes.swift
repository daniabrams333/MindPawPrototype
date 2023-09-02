//
//  PawQuotes.swift
//  MindPaw
//
//  Created by Mr. Daryl Shahid on 7/10/23.
//

import SwiftUI

struct PawQuotes: View {
    let quotes = [
        ("Believe you can, and you’re halfway there.", "Theodore Roosevelt"),
        ("The only way to do great work is to love what you do.", "Steve Jobs"),
        ("You miss 100% of the shots you don’t take.", "Wayne Gretzky"),
        ("Success is not in what you have, but who you are.", "Bo Bennett")
        
    ]
    
    @State private var currentQuoteIndex = 0
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(hex: "550527"), Color(hex: "FAA613")]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack {
                VStack {
                    Text("Paw Quotes")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.bottom, 50)
                    
                    VStack {
                        Text(quotes[currentQuoteIndex].0)
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding()
                        
                        HStack {
                            Text(quotes[currentQuoteIndex].1)
                                .font(.footnote)
                                .fontWeight(.light)
                                .foregroundColor(.white)
                            
                            Spacer()
                            
                            Circle()
                                .foregroundColor(.yellow)
                                .frame(width: 30, height: 30)
                                .overlay(
                                    Image("paw_print") // Replace with your paw print image
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20, height: 20)
                                )
                        }
                        .padding(.top)
                    }
                    .padding(.horizontal, 50)
                    .padding(.vertical, 50)
                    .background(Color("Burgundy"))
                    .cornerRadius(20)
                    .shadow(color: .black.opacity(0.2), radius: 20, x: 0, y: 10)
                    
                    Button(action: {
                        currentQuoteIndex = (currentQuoteIndex + 1) % quotes.count
                    }) {
                        Text("NEXT")
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(10)
                    }
                    .padding(.top, 20)
                }
                .padding()
                .background(Color.black.opacity(0.05).edgesIgnoringSafeArea(.all))
            }
        }
    }
}

struct PawQuotes2_Previews: PreviewProvider {
    static var previews: some View {
        PawQuotes()
    }
}
