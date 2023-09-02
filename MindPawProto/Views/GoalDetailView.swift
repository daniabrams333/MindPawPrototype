//
//  GoalDetailView.swift
//  MindPawProto
//
//  Created by Danielle Abrams on 7/13/23.
//

import SwiftUI

struct GoalDetailView: View {
    var body: some View {
        let colors = [Color(#colorLiteral(red: 0.331692636, green: 0.01877036132, blue: 0.1537563205, alpha: 1)), Color(#colorLiteral(red: 0.4080245197, green: 0.557092905, blue: 0.1487152874, alpha: 1)),  Color(#colorLiteral(red: 0.9808245301, green: 0.6521945596, blue: 0.07197915763, alpha: 1)),  Color(#colorLiteral(red: 0.9555835128, green: 0.2783452272, blue: 0.03145549819, alpha: 1))]
        
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: colors), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack (spacing: 40){
                
                Spacer()
                
                 HStack {
                    Text("Get Good Grades")
                   
                     
                     VStack (spacing: 5){
                         NavigationLink(destination: EditGoalPage() ) {
                                 Image(systemName: "square.and.pencil")
                                 .foregroundColor(.white)
                                 .shadow(radius: 2, x: 5, y: 5)
                               }
                     }
                 }
                 .font(.largeTitle)
                 .fontWeight(.medium)
                 .padding(.all)
                 .frame(width: 350, height: 150, alignment: .center)
                 .background(Color("SummerYellow"))
                 .cornerRadius(10)
                 .shadow(radius: 2, x: 10, y: 10)

                 
                
                
               /* HStack {
                    Text("Get Good Grades")
                }
                .font(.largeTitle)
                .fontWeight(.medium)
                .padding(.all)
                .frame(width: 350, height: 150, alignment: .center)
                .background(Color("SummerYellow"))
                .cornerRadius(10)
                .shadow(radius: 2, x: 10, y: 10)
                */
                
                VStack {
                    DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { Text("Start Date") })
                        .padding(.all)
                        .frame(width: 350, height: 50)
                        .background(.white)
                        .cornerRadius(10)
                        .shadow(radius: 2, x: 10, y: 10)
                    
                    DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { Text("End Date") })
                        .padding(.all)
                        .frame(width: 350, height: 50)
                        .background(.white)
                        .cornerRadius(10)
                        .shadow(radius: 2, x: 10, y: 10)
                }
                
                VStack {
                    
                    Text("Ace the midterm")
                        .padding(.all)
                        .frame(width: 350)
                        .background(.white)
                        .cornerRadius(10)
                        .shadow(radius: 2, x: 10, y: 10)
                    
                    Text("Follow Morning Routine" )
                        .padding(.all)
                        .frame(width: 350)
                        .background(.white)
                        .cornerRadius(10)
                        .shadow(radius: 2, x: 10, y: 10)
                    
                    Text("Achieve Greatness")
                        .padding(.all)
                        .frame(width: 350)
                        .background(.white)
                        .cornerRadius(10)
                        .shadow(radius: 2, x: 10, y: 10)
                }
                Spacer()
                
            }
            
        }
    }
}


struct GoalDetailView_Previews: PreviewProvider {
    static var previews: some View {
        GoalDetailView()
    }
}
