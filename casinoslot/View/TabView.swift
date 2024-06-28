//
//  TabView.swift
//  casinoslot
//
//  Created by stenio Lima on 27/06/24.
//

import SwiftUI


struct TabView: View {
    
   @State private var number = 0
    
    var body: some View {
        VStack {
            HStack {
                Button{
                  number += 10
                    
                }label: {
                    Image(systemName: "plus.circle.fill")
                        .font(.system(size:20))
                        .foregroundColor(Color("Color1"))
                        .fontWeight(.black)
                        .padding(18)
                        .background{
                            Rectangle()
                                .fill(LinearGradient(colors: [Color("BT3"),Color("BT4")], startPoint: .bottom, endPoint: .top))
                                .shadow(color:Color("BT3"),radius: 10)
                        }
                }
                Text("\(number)")
                    .padding()
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                
                Button{
                    if number > 10 {
                        number -= 5
                    }else {
                        number = 0
                    }
                }label: {
                    Image(systemName: "minus.circle.fill")
                        .font(.system(size:20))
                        .foregroundColor(Color("Color1"))
                        .fontWeight(.black)
                        .padding(18)
                        .background{
                            Rectangle()
                                .fill(LinearGradient(colors: [Color("BT3"),Color("BT4")], startPoint: .bottom, endPoint: .top))
                                .shadow(color:Color("BT3"),radius: 10)
                        }
                }
                
                
                
            }
            .background(Color("BGSETS"))
            .cornerRadius(30)
                
            HStack(spacing: 20){
                
                
                Text("MAX \n BET")
                    .font(.system(size: 13))
                    .fontWeight(.black)
                    .foregroundColor(Color("Color1"))
                    .padding(15)
                    .background{
                        Circle()
                            .fill(LinearGradient(colors: [Color("BT3"),Color("BT4")], startPoint: .bottom, endPoint: .top))
                            .shadow(color:Color("BT3"),radius: 10)
                            
                    }
                    
                
                Button{
                    
                }label: {
                    Text("Play")
                        .font(.system(size: 30))
                        .fontWeight(.black)
                        .foregroundColor(.white)
                        .padding(40)
                        .background{
                            Rectangle()
                                .fill(LinearGradient(colors: [Color("BT1"),Color("BT2")], startPoint: .bottom, endPoint: .top))
                                .cornerRadius(40)
                                .frame(width: 130, height: 80)
                        }
                        
                    
                }
                
               
                
                
                
            }
        }
        
        
        
        
        
    }
    
}




#Preview {
    TabView()
        .background(.linearGradient(colors: [Color("BG").opacity(0.7),Color("BG")], startPoint: .top, endPoint: .bottom))
        
}
