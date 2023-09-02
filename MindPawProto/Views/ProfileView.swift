//
//  ProfileView.swift
//  profile screen
//
//  Created by Lakiesha Hutcherson on 7/6/23.
//
import SwiftUI

struct ProfileView: View {
    
    @State private var FirstName = ""
    @State private var LastName = ""
    @State private var Email = ""
    @State private var Birthday = ""
    var body: some View {
        
        ZStack {
            Image("background")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            VStack {
         Image("george")
                    .resizable()
                    .frame(width: 200.0, height: 250.0)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                    
                    Section {
                        TextField("First Name", text: $FirstName)
                        
                        TextField("Last Name", text: $LastName)
                        
                        TextField("Email", text: $Email)
                        
                        TextField("Birthday", text: $Birthday)
                    }
                    .padding(.all)
                    .frame(width: 350)
                    .background(.white)
                    .cornerRadius(10)
                    .shadow(radius: 2, x: 10, y: 5)
               
            }
            .padding()
        }
    }
}
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
