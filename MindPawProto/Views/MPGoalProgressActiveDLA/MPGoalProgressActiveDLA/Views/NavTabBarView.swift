//
//  NavTabBarView.swift
//  MPGoalProgressActiveDLA
//
//  Created by Danielle Abrams on 7/11/23.
//

import SwiftUI
extension UIColor {
    static let Secondary = UIColor(Color("lightOrange"))
    static let iconColor = UIColor(Color("hotPink"))
}
struct NavTabBarView: View {
    
    var body: some View {
        
        VStack {
            TabView {
                GoalProgressView()
                    .tabItem {
                        Label("Goals", systemImage: "list.bullet.circle")
                    }
                PetMotivate()
                    .tabItem {
                        Label("Pet", systemImage: "pawprint")
                    }
                ShowSaved()
                    .tabItem {
                        Label("Profile", systemImage: "person.circle.fill")
                    }
                ResourceTab()
                    .tabItem {
                        Label("Resources", systemImage: "network")
                        
                    }
                
            }
            .tint(Color("Maroon"))
            .onAppear {
                UITabBar.appearance().backgroundColor =
                UIColor.Secondary
                UITabBar.appearance().unselectedItemTintColor =
                UIColor.gray
            }
            
            
            
        }
    }
}
struct NavTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavTabBarView()
    }
}
