//
//  SavedProfile.swift
//  MindPawProto
//
//  Created by Jeff on 7/13/23.
//

import SwiftUI

struct SavedProfile: View {
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
                Text("George")
                    .padding(.all)
                    .frame(width: 350)
                    .background(.white)
                    .cornerRadius(10)
                    .shadow(radius: 2, x: 10, y: 5)
                Text("Smith")
                    .padding(.all)
                    .frame(width: 350)
                    .background(.white)
                    .cornerRadius(10)
                    .shadow(radius: 2, x: 10, y: 5)
                Text("george@designcompany.com")
                    .padding(.all)
                    .frame(width: 350)
                    .background(.white)
                    .cornerRadius(10)
                    .shadow(radius: 2, x: 10, y: 5)
                Text("November 14, 1987")
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

struct SavedProfile_Previews: PreviewProvider {
    static var previews: some View {
        SavedProfile()
    }
}
