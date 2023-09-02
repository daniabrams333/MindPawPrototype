//
//  ProgressBar.swift
//  MPGoalProgressActiveDLA
//
//  Created by Danielle Abrams on 7/7/23.
//

import SwiftUI

struct ProgressBar: View {
  
    var width: CGFloat = 200
    var height: CGFloat = 20
    var percent: CGFloat = 50
    var color1 = Color(#colorLiteral(red: 0.9555835128, green: 0.2783452272, blue: 0.03145549819, alpha: 1))
    var color2 = Color(#colorLiteral(red: 0.9808245301, green: 0.6521945596, blue: 0.07197915763, alpha: 1))
    
    
    var body: some View {
        
        let multiplier = width / 100
        
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: height, style: .continuous)
                .frame(width: width, height: height)
                .foregroundColor(Color.black.opacity(0.1))
            
            RoundedRectangle(cornerRadius: height, style: .continuous)
                .frame(width: percent * multiplier, height: height)
                .background(
                    LinearGradient(gradient: Gradient(colors: [color1, color2]),
                                   startPoint: .leading, endPoint: .trailing)
                    .clipShape(RoundedRectangle(cornerRadius: height, style: .continuous))
                )
            
            
                .foregroundColor(.clear)
            
        }
    }
    
    
    struct ProgressBar_Previews: PreviewProvider {
        static var previews: some View {
            ProgressBar()
        }
    }
}
