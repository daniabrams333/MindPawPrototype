//
//  PetIntro.swift
//  MindPawProto
//
//  Created by Danielle Abrams on 7/11/23.
//

import SwiftUI

struct PetIntro: View {
    let color1 = Color("White")
    
    let colors = [Color( #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)), Color( #colorLiteral(red: 0.6564565301, green: 0.4415697455, blue: 0.2915526628, alpha: 1)), Color( #colorLiteral(red: 0.3485167027, green: 0.0694533512, blue: 0.05764734, alpha: 1) )]
    
    var body: some View {
        
        ZStack {
            
            LinearGradient(gradient: Gradient(colors:colors), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Complete milestones to care for your pet")
                    .bold()
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                
                Image("Zuazi")
                    .resizable()
                    .frame(width:150, height:180)
                    .clipShape(Circle())
                    .overlay{
                        Circle()
                        .stroke(.black, lineWidth:4)}
                    .padding(.bottom, 25)
                
                Text("Zuazi" + "\n" + "Age 1")
                    .font(.title)
                    .foregroundColor(.black)
                    .frame(width:250, height: 85)
                    .clipShape(Rectangle())
                  
                    .background(color1)
                    .cornerRadius(50)
                    .shadow(radius:2, x: 10, y: 10)
                    .frame(width: 10, height:10)
                    .padding(.bottom, 120)
            
                
                
                VStack {
                    HStack {
                        Text("Happiness")
                        Image(systemName: "circle.fill")
                            .imageScale(.small)
                            .foregroundColor(.yellow)
                        Image(systemName: "circle.fill")
                            .imageScale(.small)
                            .foregroundColor(.yellow)
                        Image(systemName: "circle.fill")
                            .imageScale(.small)
                            .foregroundColor(.yellow)
                        Image(systemName: "circle")
                            .imageScale(.small)
                            .foregroundColor(.yellow)
                        Image(systemName: "circle")
                            .imageScale(.small)
                            .foregroundColor(.yellow)
                    }
                    .padding(.all)
                    
                    HStack {
                        Text("Affection")
                        Image(systemName: "heart.fill")
                            .imageScale(.small)
                            .foregroundColor(.red)
                        Image(systemName: "heart.fill")
                            .imageScale(.small)
                            .foregroundColor(.red)
                        Image(systemName: "heart")
                            .imageScale(.small)
                            .foregroundColor(.red)
                        Image(systemName: "heart")
                            .imageScale(.small)
                            .foregroundColor(.red)
                        Image(systemName: "heart")
                            .imageScale(.small)
                            .foregroundColor(.red)
                    }
                    .padding(.all)
                    
                    HStack {
                        Text("Social")
                        Image(systemName: "triangle.fill")
                            .imageScale(.small)
                            .foregroundColor(.orange)
                        Image(systemName: "triangle.fill")
                            .imageScale(.small)
                            .foregroundColor(.orange)
                        Image(systemName: "triangle")
                            .imageScale(.small)
                            .foregroundColor(.orange)
                        Image(systemName: "triangle")
                            .imageScale(.small)
                            .foregroundColor(.orange)
                        Image(systemName: "triangle")
                            .imageScale(.small)
                            .foregroundColor(.orange)
                    }
                    .padding(.all)
                    
                    

                }
                    .foregroundColor(.black)
                    .frame(width:250, height: 200)
                    .clipShape(Rectangle())
                  
                    .background(color1)
                    .cornerRadius(50)
                    .shadow(radius:2, x: 10, y: 10)
                    .frame(width: 10, height:10)
                    .padding(.all)
                
                
              Spacer()
                    .frame(width: 250, height: 100)
                
                NavigationLink(destination: ChooseAGoalPath_v2())
                { Text("Next")}
                    .foregroundColor(.white)
                
                }
            
          
         
           
        }
       
    }
}

struct PetIntro_Previews: PreviewProvider {
    static var previews: some View {
        PetIntro()
    }
}
