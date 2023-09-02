//
//  Goal.swift
//  MPGoalProgressActiveDLA
//
//  Created by Danielle Abrams on 7/7/23.
//

import Foundation
import SwiftUI

struct Goal: Hashable, Codable, Identifiable{
    var id = UUID()
    var name: String
    var progress: Int
    var symbolName: String
    var symbolColor: String
    
    
}
