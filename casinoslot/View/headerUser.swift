//
//  headerUser.swift
//  casinoslot
//
//  Created by stenio Lima on 08/07/24.
//

import SwiftUI

struct headerUser: View {
    var body: some View {
        HStack{
            Circle()
                .fill(.gray)
                .frame(width: 80 )
            VStack(alignment: .leading){
                Text("Frank G") // get the name from the person's registration (we will use Swift Data)
                    .font(.title).bold()
                    .foregroundColor(.white)
                HStack{
                    Image(systemName: "person.fill.checkmark")
                        .foregroundColor(.green)
                    Text("Online") // if the player can still play or is banned (let's see if we can match this with the available lives)
                        .foregroundColor(.white)
                }
            }
            Spacer()
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
                Text("$ 100")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.trailing,10)
            }
            .padding(5)
            .background{
                RoundedRectangle(cornerRadius: 30, style: .continuous)
                    .fill(Color("BGSETS"))
                    .shadow(color: Color(.green), radius: 5)
            }
            Spacer()
        }
        
        .padding()
    }
}

#Preview {
    headerUser()
        .background(Color("BG"))
}
