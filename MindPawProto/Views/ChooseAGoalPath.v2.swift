//
//  ChooseAGoalPath.v2.swift
//  Apple Foundation
//
//  Created by Kambuza Mugala on 7/5/23.
// WHen you click the Let's Begin button it takes you to SetYourGoals.v2
//Tips button takes you to Resources

import SwiftUI

struct ChooseAGoalPath_v2: View {
    
    @State var selection: Int? = nil
    var body: some View {
        
        GeometryReader{ geo in
            ZStack{
            Image ("SF-Flame")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                .opacity(1.0)
           
            //Vstack is inside Zstack
            VStack(spacing:20){
                Image ("ChooseYourGoalPath_button")
                    .resizable()
                    .frame(width: 290, height: 170)
                    .shadow(radius: 2, x: 10, y: 10)
                /*
                 NavigationLink("Start Here",
                                destination:
                                 NavTabBarView())
             
                 */
               
                    
                NavigationLink(destination: SetYourGoalsPage2()) {
                    Image("Let'sBeginButton")
                            .resizable()
                            .frame(width: 190, height: 90)
                            .shadow(radius: 2, x: 10, y: 10)
                    }
                
                NavigationLink(destination: SmartGoalsView()) {
                    Image("Tips_button")
                    .resizable()
                    .frame(width: 90, height: 60)
                    .shadow(radius: 2, x: 7, y: 10)
                    .opacity(0.7)
                }
                }
            }
        }
    }
}

struct ChooseAGoalPath_v2_Previews: PreviewProvider {
    static var previews: some View {
        ChooseAGoalPath_v2()
    }
}
