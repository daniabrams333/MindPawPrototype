//
//  ShowSaved.swift
//  MindPawProto
//
//  Created by Jeff on 7/13/23.
//

import SwiftUI

struct ShowSaved: View {
    @State var isActive: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                if self.isActive {
                    SavedProfile()
                } else {
                  
                    ProfileView()
                }
                
                Button {
                    self.isActive = true
                } label: {
                    Text("Save")
                        .foregroundColor(.white)
                        .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: 50)
                        .background(.orange)
                        .cornerRadius(10)
                    
                }.offset(y: -175)
                   
            } 
            
        }
    }
}

struct ShowSaved_Previews: PreviewProvider {
    static var previews: some View {
        ShowSaved()
    }
}
