//
//  Cart.swift
//  GroceryAppTut
//
//  Created by Ahmed Gagan on 15/01/23.
//

import SwiftUI

struct Cart: View {
    
    @State var totalPrice = 480.00
    
    var body: some View {
        NavigationView{
            VStack {
                Button{
                    
                }label: {
                    NavigationLink(destination: HomeScreen(user: "").navigationBarBackButtonHidden(true), label: {
                        Text("My Cart")
                            .font(.system(size: 44, weight: .semibold, design: .rounded))
                            .frame(width: 320, alignment: .leading)
                            .foregroundColor(.black)
                    }).navigationBarBackButtonHidden(true)
                }
                
                List {
                    HStack{
                        Image("Baju1").resizable()
                            .frame(width: 50, height: 50)
                        VStack{
                            Text("TommySunBlue")
                            Text("RM 160.00")
                        }
                        
                    }
                    HStack{
                        Image("Baju2").resizable()
                            .frame(width: 50, height: 50)
                        VStack{
                            Text("TommySunWhite")
                            Text("RM 160.00")
                        }
                        
                    }
                    HStack{
                        Image("BajuWomen1").resizable()
                            .frame(width: 50, height: 50)
                        VStack{
                            Text("SunFlowerWhite")
                            Text("RM 160.00")
                        }
                        
                    }
                }
                .frame(width: 325)
                Spacer()
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(.black)
                        .opacity(0.8)
                        .frame(width: 350, height: 120)
                    VStack {
                        Text("Total Price")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .frame(width: 350, alignment: .leading)
                            .padding(.leading, 60)
                        Text("RM\(String(format: "%.2f", totalPrice))")
                            .foregroundColor(.white)
                            .font(.system(size: 26, weight: .bold))
                            .frame(width: 350, alignment: .leading)
                            .padding(.leading, 60)
                    }
                    Button() {
                        
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .strokeBorder()
                                .frame(width: 120, height: 50)
                                .foregroundColor(.white)
                            Text("Pay Now >")
                                .foregroundColor(.white)
                                .bold()
                        }
                    }.offset(x: 80)
                }
                
            }.onAppear(perform: self.calculateTotalPrice)
        }
        
    }
    
    func calculateTotalPrice() {
        totalPrice = 480.00
        
    }
}

struct Cart_Previews: PreviewProvider {
    static var previews: some View {
        Cart()
    }
}
