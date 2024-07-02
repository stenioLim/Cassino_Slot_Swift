//
//  ModelViewOne.swift
//  casinoslot
//
//  Created by stenio Lima on 28/06/24.
//

import Foundation
import SwiftUI

class Slipt: ObservableObject {
    
    
    @Published var balance1: Int = 100 // This value is a symbolic value to test the function.
    @Published var balance2: Int = 0
    @Published var Plot: Int = 0
    
    
    @Published  var reel1: String = "🍒"
    @Published  var  reel2: String = "🍋"
    @Published  var reel3: String = "🍊"
    
    let symbols = ["🍒", "🍋", "🍊", "🍇", "🔔", "⭐️", "💎"]
    
    func spinReels() {
            reel1 = symbols.randomElement()!
            reel2 = symbols.randomElement()!
            reel3 = symbols.randomElement()!
            
            if reel1 == reel2 && reel2 == reel3 {
               Plot = balance2 * 20
                balance1 += Plot
            } else {
                print( "Tente novamente." )
            }
        }
    
    func addCash(){
        balance2 += 10
        balance1 -= 10
        
    }
    
    func reduceCash(){
        
            balance2 -= 10
            balance1 += 10
        
        
        
    }
    
}
