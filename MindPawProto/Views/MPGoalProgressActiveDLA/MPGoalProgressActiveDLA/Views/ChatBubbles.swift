//
//  ChatBubbles.swift
//  MPGoalProgressActiveDLA
//
//  Created by Danielle Abrams on 7/10/23.
//

import SwiftUI

struct ChatBubbles: View {
    
    var messages = [ "I'm hungry, feed me goals",
                     "You're doing great",
                     "Yum, I love goals",
                     "Achieving goals is 90% persperation and 10% motivation"
    ]
    
    var body: some View {
        VStack(alignment: .leading){
            Text(messages[Int(CGFloat.random(in: 0...3))])
                .fontWeight(.heavy)
                .padding()
                .background(.white)
                .foregroundColor(.black)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous ))
                .shadow(radius: 2, x:10, y:10)
            
        }
    }
}

struct ChatBubbles_Previews: PreviewProvider {
    static var previews: some View {
        ChatBubbles()
    }
}
