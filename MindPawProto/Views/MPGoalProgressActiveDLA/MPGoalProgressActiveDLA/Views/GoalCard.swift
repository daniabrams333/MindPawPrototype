//
//  GoalCard.swift
//  MPGoalProgressActiveDLA
//
//  Created by Danielle Abrams on 7/7/23.
//

import SwiftUI

struct GoalCard: View {
    var goal: Goal
    var width: CGFloat = 200
    var height: CGFloat = 125
    @State var percent: CGFloat = 0
    var color4 = Color(#colorLiteral(red: 0.331692636, green: 0.01877036132, blue: 0.1537563205, alpha: 1))
  
    
    
    
    var body: some View {
       
        VStack{
            Image(systemName: "\(goal.symbolName)")
                .foregroundColor(Color("IconColors"))
                //.foregroundStyle(Color("goal.symbolColor"))
                .imageScale(.large)
            Text("\(goal.name)")
            ProgressBar(width: 150, height: 20, percent: CGFloat(goal.progress), color1: Color(.orange), color2: Color(.red))
            
        }
        .padding()
        .frame(width: width, height: height)
        .background(.white)
        .cornerRadius(10)
        .shadow(radius: 2)
            
        }
    }


struct GoalCard_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            GoalCard(goal: goals[0])
            GoalCard(goal: goals[1])
            GoalCard(goal: goals[2])
        }
    }
}
