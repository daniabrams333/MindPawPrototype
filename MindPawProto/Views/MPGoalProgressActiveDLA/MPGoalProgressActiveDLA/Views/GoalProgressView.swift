//
//  GoalProgressView.swift
//  MPGoalProgressActiveDLA
//
//  Created by Danielle Abrams on 7/10/23.
//

import SwiftUI

struct GoalProgressView: View {
    
     //   var goal: Goal
       var width: CGFloat = 200
       var height: CGFloat = 125
       @State var percent: CGFloat = 0
       var color4 = Color(#colorLiteral(red: 0.331692636, green: 0.01877036132, blue: 0.1537563205, alpha: 1))
    var colora = Color(#colorLiteral(red: 0.9555835128, green: 0.2783452272, blue: 0.03145549819, alpha: 1))
    var colorb = Color(#colorLiteral(red: 0.9813542962, green: 0.6479889154, blue: 0.07541125268, alpha: 1))
    var colorc = Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
    
    var body: some View {
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [colora, colorb, colorc]), startPoint: /*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.top/*@END_MENU_TOKEN@*/)
                     //   .ignoresSafeArea()
                    
                    
                    VStack {
                        VStack{
                            Text("Goal Progress")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                
                            
                        }
                        .padding()
                        .frame(width: width, height: height)
                        .background(color4)
                        .cornerRadius(5)
                        .shadow(radius: 2, x:10, y:10)
                        
                        
                        ForEach(goals) {goal in
                            
                            VStack{
                                NavigationLink{
                                    GoalDetailView()
                                    
                                } label:{
                                    GoalCard(goal: goal)
                                    
                                }
                                
                            }
                            
                            
                            
                            .padding()
                            .frame(width: width, height:height)
                            .background(.white)
                            .cornerRadius(10)
                            .shadow(radius: 2, x:10, y:10)
                        }
                        
                        //padding and frame go before any other modifier
                        
                        
                        
                        
                        
                        /*              VStack{
                         Image(systemName: "heart.fill")
                         .foregroundStyle(.red)
                         .imageScale(.large)
                         Text("\(goal.name)")
                         ProgressBar(width: 150, height: 20, percent: CGFloat(goal.progress), color1: Color(.orange), color2: Color(.red))
                         
                         }
                         .padding()
                         .frame(width: width, height: height)
                         .background(.white)
                         .cornerRadius(10)
                         .shadow(radius: 2)
                         
                         
                         VStack{
                         Image(systemName: "triangle.fill")
                         .foregroundStyle(.orange)
                         .imageScale(.large)
                         Text("\(goal.name)")
                         ProgressBar(width: 150, height: 20, percent: CGFloat(goal.progress), color1: Color(.orange), color2: Color(.red))
                         
                         }
                         .padding()
                         .frame(width: width, height: height)
                         .background(.white)
                         .cornerRadius(10)
                         .shadow(radius: 2)
                         
                         */
                        
                        .padding()
                    }
                }
            }
        }


struct GoalProgressView_Previews: PreviewProvider {
    static var previews: some View {
        GoalProgressView()
    }
}
