//
//  SmartGoalsView.swift
//  MindPaw
//
//  Created by Mr. Daryl Shahid on 7/12/23.
//

import SwiftUI

struct SmartGoalsView: View {
    let acronyms = [
        ("SMART", "Used for setting effective goals", ["Specific", "Measurable", "Achievable", "Relevant", "Time-bound"]),
        ("GROW", "A method for problem-solving or goal setting", ["Goal", "Reality", "Options", "Will"]),
        ("SWOT", "A strategic planning tool used to help a person or organization identify key areas for development or improvement", ["Strengths", "Weaknesses", "Opportunities", "Threats"]),
        ("KISS", "A design principle noting that systems work best if they are kept simple rather than made complicated", ["Keep", "It", "Simple", "Stupid"])
    ]
    
    @State private var currentAcronymIndex = 0
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(hex: "550527"), Color(hex: "FAA613")]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack {
                VStack {
                    Text(acronyms[currentAcronymIndex].0)
                        .font(.system(size: 50))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.bottom, 10)
                    
                    Text(acronyms[currentAcronymIndex].1)
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding(.bottom, 40)
                    
                    VStack(alignment: .center) {
                        ForEach(acronyms[currentAcronymIndex].2, id: \.self) { word in
                            HStack {
                                Text(String(word.prefix(1)))
                                    .font(.system(size: 30))
                                    .fontWeight(.bold)
                                    .foregroundColor(.red)
                                Text(String(word.dropFirst()))
                                    .font(.system(size: 30))
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                            }
                        }
                        .padding()
                        
                        HStack {
                            Text(acronyms[currentAcronymIndex].0 + " GOALS")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
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
                        currentAcronymIndex = (currentAcronymIndex + 1) % acronyms.count
                    }) {
                        Text("NEXT")
                            .font(.system(size: 30))
                            .fontWeight(.bold)
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

struct AcronymView_Previews: PreviewProvider {
    static var previews: some View {
        SmartGoalsView()
    }
}
