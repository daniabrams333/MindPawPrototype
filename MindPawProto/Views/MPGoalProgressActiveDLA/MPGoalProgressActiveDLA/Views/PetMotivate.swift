//
//  PetMotivate.swift
//  MPGoalProgressActiveDLA
//
//  Created by Danielle Abrams on 7/10/23.
//

import SwiftUI

struct PetMotivate: View {
    var color5 = Color(#colorLiteral(red: 0.331692636, green: 0.01877036132, blue: 0.1537563205, alpha: 1))
    var color6 = Color(#colorLiteral(red: 0.9813542962, green: 0.6479889154, blue: 0.07541125268, alpha: 1))
    var color7 = Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [color5, color6, color7]), startPoint: /*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.top/*@END_MENU_TOKEN@*/)
               // .ignoresSafeArea()
            
            VStack{
                ChatBubbles()
                    .animation(.linear, value: true)
                    
            
            
                Image("Fox")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
            
                VStack{
                    Text("Zuazi")
                        .font(.title)
                    Text("Age 1")
                }
                .frame(width:300, height:100)
                .background(.white)
                .cornerRadius(10)
                .shadow(radius:2, x:10, y:10)
                
                PetCare()
            }
           
                
            
            }
        }
    }


struct PetMotivate_Previews: PreviewProvider {
    static var previews: some View {
        PetMotivate()
    }
}
