//
//  test.swift
//  loginPage
//
//  Created by STDC_MACBOOK_37 on 02/08/2023.
//

import SwiftUI

struct test: View {
    var body: some View {
        
        ScrollView(.vertical,content: {
            
            VStack{
                
                HStack{
                    
                    VStack{
                        Text(items[index].name)
                            .fontWeight(.heavy)
                            .offset(x: -32)
                        
                        Text("RM \(String(format: "%.2f", items[index].price))")
                            .offset(x: -47)
                    }
                    
                    HStack{
                        
                        Button{
                            if digitData == 1{}
                            else{
                                digitData -= 1
                            }
                            
                        }label: {
                            
                            Image(systemName: "minus")
                                .padding(40)
                                .foregroundColor(Color.white)
                                .background(Color("MidnightBlue"))
                                .frame(maxWidth: 30, maxHeight: 30)
                                .cornerRadius(100)
                        }
                        
                        Text("\(digitData)")
                            .font(.system(size: 20))
                        
                        Button{
                            if digitData == 10{}
                            else{
                                digitData += 1
                            }
                        }label: {
                            
                            Image(systemName: "plus")
                                .padding(40)
                                .foregroundColor(Color.white)
                                .background(Color("MidnightBlue"))
                                .frame(maxWidth: 30, maxHeight: 30)
                                .cornerRadius(100)
                        }
                    }
                    .offset(x: 70)
                    
                }
               
                Text("Colors")
                    .fontWeight(.heavy)
                    .offset(x: -105, y: 30)
                
                HStack{
                    
                    //White Color Tshirt
                    ZStack{
                        
                        Button(action:{
                            
                            withAnimation{
                                
                                if index > 0{
                                    
                                    index = 0
                                }
                            }
                        }, label: {
                            
                            ZStack{
                                
                                Circle()
                                    .foregroundColor(.black)
                                    .frame(width: 30, height: 30)
                                
                                Circle()
                                    .foregroundColor(.white)
                                    .frame(width: 28, height: 28)
                                    .opacity(index == 0 ? 1 : 1)
                            }
                            
                        })
                        .disabled(index == 0 ? true : false)
                    }
                    
                    //Maroon Color Tshirt
                    ZStack{
                        
                        Button(action:{
                            
                            withAnimation{
                                
                                if index <= items.count{
                                    
                                    index = 1
                                }
                            }
                        }, label: {
                            ZStack{
                                
                                Circle()
                                    .foregroundColor(.black)
                                    .frame(width: 30, height: 30)
                                
                                Circle()
                                    .foregroundColor(Color("Maroon"))
                                    .frame(width: 28, height: 28)
                                    .opacity(index == items.count - 1 ? 1 : 1)
                            }
                        })
                    }
                    
                    //Blue Color Tshirt
                    ZStack{
                        
                        Button(action:{
                            
                            withAnimation{
                                
                                if index <= items.count{
                                    
                                    index = 2
                                }
                            }
                        }, label: {
                            ZStack{
                                
                                Circle()
                                    .foregroundColor(.black)
                                    .frame(width: 30, height: 30)
                                
                                Circle()
                                    .foregroundColor(.blue)
                                    .frame(width: 28, height: 28)
                                    .opacity(index == items.count - 1 ? 1 : 1)
                            }
                        })
                    }
                    
                    //Green Color Tshirt
                    ZStack{
                        
                        Button(action:{
                            
                            withAnimation{
                                
                                if index <= items.count{
                                    
                                    index = 3
                                }
                            }
                        }, label: {
                            ZStack{
                                
                                Circle()
                                    .foregroundColor(.black)
                                    .frame(width: 30, height: 30)
                                
                                Circle()
                                    .foregroundColor(Color("DustyGreen"))
                                    .frame(width: 28, height: 28)
                                    .opacity(index == items.count - 1 ? 1 : 1)
                            }
                        })
                    }
                    
                    //Blue Color Tshirt
                    ZStack{
                        
                        Button(action:{
                            
                            withAnimation{
                                
                                if index <= items.count{
                                    
                                    index = 4
                                }
                            }
                        }, label: {
                            ZStack{
                                
                                Circle()
                                    .foregroundColor(.black)
                                    .frame(width: 30, height: 30)
                                
                                Circle()
                                    .foregroundColor(Color("Biege"))
                                    .frame(width: 28, height: 28)
                                    .opacity(index == items.count - 1 ? 1 : 1)
                            }
                        })
                    }
                }
                .offset(x: -40, y: 20)
                
                VStack{
                    
                    Divider()
                        .frame(width: 300, height: 2)
                        .background(Color("MidnightBlue"))
                        .padding(.horizontal, 16)
                    
                    Text("Product Details")
                        .fontWeight(.heavy)
                    
                    Text("")
                    
                    Text("SKU: " + items[index].SKU )
                        .offset(x: -70)
                        .opacity(0.6)
                    
                    Text("Material: " + items[index].material)
                        .offset(x: -46)
                        .opacity(0.6)
                    
                    Text("Pattern: " + items[index].pattern)
                        .offset(x: -72)
                        .opacity(0.6)
                    
                    Text("Condition: " + items[index].condition)
                        .offset(x: -57)
                        .opacity(0.6)
                    
                    Divider()
                        .frame(width: 300, height: 2)
                        .background(Color("MidnightBlue"))
                        .padding(.horizontal, 16)
                    
                    
                    
                    Text("Care Label")
                        .fontWeight(.heavy)
                    
                    Text("")
                    
                }
                .offset(y: 40)
                
                Text(items[index].detail)
                    .offset(y: 40)
                    .opacity(0.6)
                
                Spacer()
                
                HStack{
                    
                    Button(action:{
                        cartItems.append(items)
                    }, label: {
                        
                        ZStack{
                            
                            Rectangle()
                                .foregroundColor(Color("MidnightBlue"))
                                .frame(width: 110, height: 35)
                                .cornerRadius(20)
                            
                            Text("Add To Cart")
                                .foregroundColor(.white)
                        }
                        
                    })
                }
                .offset(y: 60)
                
            }
        })
    }
    .padding(.horizontal)
    .frame(maxHeight: .infinity, alignment: .top)
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
