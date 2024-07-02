//
//  HOMEVIEW.swift
//  casinoslot
//
//  Created by stenio Lima on 27/06/24.
//

import SwiftUI

struct HOMEVIEW: View {
    
    @ObservedObject var slipt = Slipt()
    
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    HeaderView(slot: slipt)
                        
                        
                }
                Spacer()
                SlotView(slipt: slipt)
                    .background{
                        Image("slot1")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 450)
                }
                    
                    
                Spacer()
                TabView(slot: slipt)
                    
                    
            }
            .background(.linearGradient(colors: [Color("BG"),Color("BG").opacity(0.7),Color("BG")], startPoint: .top, endPoint: .bottom))
        }
        
        
    }
}

#Preview {
    HOMEVIEW()
    
       
}
