//
//  SlotView.swift
//  casinoslot
//
//  Created by stenio Lima on 28/06/24.
//

import SwiftUI

struct SlotView: View {
    
    @State private var result: String = ""
    
    @ObservedObject var slipt = Slipt()
    var body: some View {
        
            VStack{
              
                HStack(spacing: 35){
                    Text("\(slipt.reel1)")
                        .font(.system(size: 60))
                    Text("\(slipt.reel2)")
                        .font(.system(size: 60))
                    Text("\(slipt.reel3)")
                        .font(.system(size: 60))
                }
                
                .padding(.top, 80)
                
                
                
            }
            
       
        
        
            
    }
    
    
}

#Preview {
    SlotView(slipt: Slipt())
        .background{
            Image("slot1")
                .resizable()
                .scaledToFill()
                .frame(width: 400)
    }
        
       
}
