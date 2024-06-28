//
//  HOMEVIEW.swift
//  casinoslot
//
//  Created by stenio Lima on 27/06/24.
//

import SwiftUI

struct HOMEVIEW: View {
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    HeaderView()
                        
                        .background(.linearGradient(colors: [Color("BG").opacity(0.7),Color("BG")], startPoint: .top, endPoint: .bottom))
                }
                Text("stenio")
                    
                Spacer()
                TabView()
                    .background(.linearGradient(colors: [Color("BG").opacity(0.7),Color("BG")], startPoint: .top, endPoint: .bottom))
                    
            }
        }
    }
}

#Preview {
    HOMEVIEW()
       
}
