//
//  Welcome.swift
//  MPGoalProgressActiveDLA
//
//  Created by Danielle Abrams on 7/11/23.
//

import SwiftUI

struct Welcome: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("Welcome to Mind Paw")
                NavigationLink("Start Here",
                               destination:
                                NavTabBarView())
            }
        }
    }
}

struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        Welcome()
    }
}
