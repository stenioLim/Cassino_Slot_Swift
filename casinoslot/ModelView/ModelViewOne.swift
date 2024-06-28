//
//  ModelViewOne.swift
//  casinoslot
//
//  Created by stenio Lima on 28/06/24.
//

import Foundation
import SwiftUI

class Slipt: ObservableObject {
    
    @Published  var reel1: String = "🍒"
    @Published  var  reel2: String = "🍋"
    @Published  var reel3: String = "🍊"
    
    let symbols = ["🍒", "🍋", "🍊", "🍇", "🔔", "⭐️", "💎"]
    
    func spinReels() {
            reel1 = symbols.randomElement()!
            reel2 = symbols.randomElement()!
            reel3 = symbols.randomElement()!
            
            if reel1 == reel2 && reel2 == reel3 {
                print("Parabéns! Você ganhou!")
            } else {
                print( "Tente novamente." )
            }
        }
}
