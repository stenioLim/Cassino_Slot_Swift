//
//  DepositView.swift
//  casinoslot
//
//  Created by stenio Lima on 08/07/24.
//

import SwiftUI

struct DepositView: View {
    var body: some View {
        VStack{
            Text("Deposit")
                .font(.title).bold()
                .foregroundColor(.white)
            
                HStack(spacing:100){
                    Button{
                        
                    }label: {
                        Image("Pix")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70)
                            .background{
                                Rectangle()
                                    .fill(Color("BGSETS"))
                                    .frame(width: 140, height: 140)
                                    .cornerRadius(30)
                            }
                        
                    }
                    
                    Button{
                        
                    }label: {
                        Image(systemName: "creditcard.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.white)
                            .frame(width: 70)
                            .background{
                                Rectangle()
                                    .fill(Color("BGSETS"))
                                    .frame(width: 140, height: 140)
                                    .cornerRadius(30)
                            }
                    }
                    
                    
                }
                .padding(50)
            HStack{
                Text("Transation:")
                    .font(.title).bold()
                    .foregroundColor(.white)
                Spacer()
            }
            .padding(.leading, 20)
            HStack(spacing:50){
                Text("$ 100")
                    .font(.headline)
                    .foregroundColor(.white)
                Text("Pix")
                    .font(.headline)
                    .foregroundColor(.white)
                Text("20/05/2024")
                    .font(.headline)
                    .foregroundColor(.white)
                
            }
            .padding()
            .background(Color("BGSETS"))
            .cornerRadius(20)
            
            
        }
        
    }
}

#Preview {
    DepositView()
        .background(Color("BG"))
}
