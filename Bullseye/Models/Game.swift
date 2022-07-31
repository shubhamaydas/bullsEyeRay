//
//  Game.swift
//  Bullseye
//
//  Created by Shubhamay Das on 31.07.22.
//

import Foundation
import SwiftUI

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    func points(sliderValue: Int) -> Int {
        100 - abs(self.target - sliderValue)        
    }
}
