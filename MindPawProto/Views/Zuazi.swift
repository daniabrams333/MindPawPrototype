//
//  Zuazi.swift
//  SuperFriends
//
//  Created by Hayley Schultz on 7/7/23.
//

import SwiftUI

struct Zuazi: View {
    
    let color1 = Color("White")
    
    let colors = [Color( #colorLiteral(red: 1, green: 0.9970417619, blue: 0.9298824072, alpha: 1)), Color( #colorLiteral(red: 0.8230470419, green: 0.5605217814, blue: 0.08679769188, alpha: 1)), Color( #colorLiteral(red: 0.7714272141, green: 0.170486331, blue: 0.1730450988, alpha: 1) )]
    
    var body: some View {
        
        ZStack {
            
            LinearGradient(gradient: Gradient(colors:colors), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                Text("Welcome to the world, Zuazi!")
                    .bold()
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                
                Image("Zuazi")
                    .resizable()
                    .frame(width:200, height:225)
                    .clipShape(Circle())
                    .overlay{
                        Circle()
                        .stroke(.black, lineWidth:4)
                        
                    }
                    .padding()
                   // .padding()
                   // .padding()
                   // .padding()
               /* VStack{
                    NavigationLink("New User",
                                   destination:
                                    NavTabBarView())
                }
                
                
                .frame(width: 350, height: 75.0)
                .background(.orange)
                .cornerRadius(10)
                .shadow(radius: 2)
                */
            //    .padding()
                
                NavigationLink("Here's your pet!",
                               destination: PetIntro())
                        .bold()
                      //  .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .clipShape(Rectangle())
                        .foregroundColor(.black)
                        .frame(width:250, height: 65)
                        .padding()
                        .background(color1)
                        .cornerRadius(50)
                        .shadow(radius:2, x: 10, y: 10)
                        .frame(width: 10, height:80)
            
            }
        }
    }
}
        
        struct Zuazi_Previews: PreviewProvider {
            static var previews: some View {
                Zuazi()
            }
}

