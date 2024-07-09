//
//  AddBalanceView.swift
//  casinoslot
//
//  Created by stenio Lima on 28/06/24.
// We will have to put here the profile of the person with photo and name, we will have to put the payment method of the people and also the support and questions

import SwiftUI

struct AddBalanceView: View {
    var body: some View {
        NavigationStack{
            VStack{
                headerUser()
                    .background(Color("BG"))

                DepositView()
                    
                Spacer()
            }
            .background(Color("BG"))
        }
        
        
    }
}

#Preview {
    AddBalanceView()
        
}
