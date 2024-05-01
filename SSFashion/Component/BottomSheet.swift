//
//  BottomSheet.swift
//  loginPage
//
//  Created by STDC_MACBOOK_37 on 30/07/2023.
//

import SwiftUI

struct BottomSheet: View {
    
    var body: some View {
        VStack{
            
    
        }
        .padding()
        .sheet(isPresented: .constant(true)){
            
            VStack{
                
                Capsule()
                    .fill(Color.black)
                    .frame(width: 100, height: 5)
                
                Text("sfvdvfdbfdb")
                    .bold()
                    .offset(x: -55)
                
                Text("svervrvrre")
                    .offset(x: -100)
                
                Text("Colors")
                    .fontWeight(.heavy)
                    .offset(x: -100, y: 30)
                
                HStack{
                    
                    //White Color Tshirt
                    ZStack{
                        
                        Button(action:{
                            
                        }, label: {
                            ZStack{
                                
                                Circle()
                                    .foregroundColor(.black)
                                    .frame(width: 30, height: 30)
                                
                                Circle()
                                    .foregroundColor(.white)
                                    .frame(width: 28, height: 28)
                                
                            }
                        })
                        
                        
                    }
                    
                    //Maroon Color Tshirt
                    ZStack{
                        
                        Button(action:{
                            
                            
                        }, label: {
                            ZStack{
                                
                                Circle()
                                    .foregroundColor(.black)
                                    .frame(width: 30, height: 30)
                                
                                Circle()
                                    .foregroundColor(Color("Maroon"))
                                    .frame(width: 28, height: 28)
                                
                            }
                        })
                    }
                }
            }
        }
    }
}

struct BottomSheet_Previews: PreviewProvider {
    static var previews: some View {
        BottomSheet()
    }
}
