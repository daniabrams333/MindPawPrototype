//
//  ProfileView.swift
//  profile screen
//
//  Created by Lakiesha Hutcherson on 7/6/23.
//
import SwiftUI

struct LoginView: View {
    
    @State private var UserName = ""
    @State private var Password = ""
    
    var body: some View {
        
        ZStack {
            Image("background")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack (spacing: 10){
         Image("MindPawLogo")
                    .resizable()
                    .frame(width: 175.0, height: 175.0)
                    
                    .shadow(radius: 10)
                    
                    Section {
                        TextField("UserName", text: $UserName)
                        
                        SecureField("Password", text: $Password)
                       
                    }
                    .padding(.all)
                   .frame(width: 350)
                    .background(.white)
                    .cornerRadius(10)
                    .shadow(radius: 2, x: 10, y: 10)
                    
                /*
                 
                 VStack{
                     NavigationLink{
                         GoalDetail()
                         
                     } label:{
                         GoalCard(goal: goal)
                         
                     }
                     
                 }
                 */
                VStack{
                    NavigationLink("Login",
                                   destination:
                                    NavTabBarView())
                    
                }
                .frame(width: 350, height: 75.0)
                .background(.orange)
                .cornerRadius(10)
                .shadow(radius: 2, x: 10, y:10)
               // .padding()
                
                VStack{
                    NavigationLink("New User",
                                   destination:
                                    Zuazi())
                }
                
                
                .frame(width: 350, height: 75.0)
                .background(.orange)
                .cornerRadius(10)
                .shadow(radius: 2, x:10, y:10)
            //    .padding()
            }
            .padding()
        }
    }
}
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
