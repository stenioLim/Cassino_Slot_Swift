//
//  HeaderView.swift
//  casinoslot
//
//  Created by stenio Lima on 27/06/24.
//

import SwiftUI

struct HeaderView: View {
    @ObservedObject var slot = Slipt()
    var body: some View {
        NavigationStack {
            HStack(spacing:20){
                VStack(alignment: .leading){
                    Text("Balance:")
                        .font(.caption).bold()
                        .foregroundColor(.white)
                    HStack{
                        VStack(){
                            Image(systemName: "banknote")
                                .foregroundColor(.green)
                                .padding(.trailing)
                                .background{
                                    Circle()
                                        .fill(.white)
                                        .shadow(color: Color(.green), radius: 5)
                                        .padding(-15)
                                        .padding(.trailing)
                                }
                        }
                        Text("$ \(slot.balance1)")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.trailing,10)
                    }
                    .padding(10)
                    .background{
                        RoundedRectangle(cornerRadius: 30, style: .continuous)
                            .fill(Color("BGSETS"))
                            .shadow(color: Color(.green), radius: 5)
                    }
                }
                
                VStack(alignment: .leading){
                    Text("Lives:").bold()
                        .font(.caption)
                        .foregroundColor(.white)
                    HStack{
                        VStack(){
                            Image(systemName: "heart.fill")
                                .foregroundColor(.red)
                                .padding(.trailing)
                                .background{
                                    Circle()
                                        .fill(.white)
                                        .shadow(color: Color(.red), radius: 5)
                                        .padding(-15)
                                        .padding(.trailing)
                                }
                        }
                        Text("\(slot.lifes)")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.trailing,5)
                    }
                    .padding(10)
                    .background{
                        RoundedRectangle(cornerRadius: 30, style: .continuous)
                            .fill(Color("BGSETS"))
                            .shadow(color: Color(.red), radius: 5)
                    }
                }
                
            Spacer()
                
                HStack{
                    NavigationLink{
                        AddBalanceView()
                    }label: {
                        Image(systemName: "line.3.horizontal.circle.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                            .padding(.top)
                    }
                    
                }
               
            }.padding()
        }
    }
}

#Preview {
    NavigationStack{
        HeaderView(slot: Slipt())
            .background(Color("BG"))
    }
    
        
    
}
