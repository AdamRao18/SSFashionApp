//
//  Items.swift
//  loginPage
//
//  Created by STDC_MACBOOK_37 on 27/07/2023.
//

import SwiftUI
import SceneKit

struct ARMen: View{
    
    @State var items = [
        
        Item(id: 0, name:"Plain T-Shirt" ,material: "100% Cotton" ,pattern:"Slim Fit" ,SKU: "W01789W", condition: "Excellent" ,price: 80.00 ,image: "WhiteMen.usdz" ,detail: "Machine Wash Cold With Similar Fabrics, Do Not Tumble Dry, Do Not Use Fabric Softeners, Wash Dark Color Seperately, Wash And Iron Inside Out, Do Not Iron On Embellishment"),
        Item(id: 0, name:"Plain T-Shirt" ,material: "100% Cotton" ,pattern:"Slim Fit" ,SKU: "M01789M", condition: "Excellent" ,price: 80.00 ,image: "MaroonMen.usdz" ,detail: "Machine Wash Cold With Similar Fabrics, Do Not Tumble Dry, Do Not Use Fabric Softeners, Wash Dark Color Seperately, Wash And Iron Inside Out, Do Not Iron On Embellishment"),
        Item(id: 0, name:"Plain T-Shirt" ,material: "100% Cotton" ,pattern:"Slim Fit" ,SKU: "B01789B", condition: "Excellent" ,price: 80.00 ,image: "BlueMen.usdz" ,detail: "Machine Wash Cold With Similar Fabrics, Do Not Tumble Dry, Do Not Use Fabric Softeners, Wash Dark Color Seperately, Wash And Iron Inside Out, Do Not Iron On Embellishment"),
        Item(id: 0, name:"Plain T-Shirt" ,material: "100% Cotton" ,pattern:"Slim Fit" ,SKU: "G01789G", condition: "Excellent" ,price: 80.00 ,image: "GreenMen.usdz" ,detail: "Machine Wash Cold With Similar Fabrics, Do Not Tumble Dry, Do Not Use Fabric Softeners, Wash Dark Color Seperately, Wash And Iron Inside Out, Do Not Iron On Embellishment"),
        Item(id: 0, name:"Plain T-Shirt" ,material: "100% Cotton" ,pattern:"Slim Fit" ,SKU: "BG01789BG", condition: "Excellent" ,price: 80.00 ,image: "BiegeMen.usdz" ,detail: "Machine Wash Cold With Similar Fabrics, Do Not Tumble Dry, Do Not Use Fabric Softeners, Wash Dark Color Seperately, Wash And Iron Inside Out, Do Not Iron On Embellishment")
    ]
    @State var digitData = 1
    @State var index = 0
    @State var offset: CGFloat = 0
    @State var lastOffset: CGFloat = 0
    @GestureState var gestureOffset: CGFloat = 0
    
    var body: some View{
        
        ZStack{
            
            //3D Background
            SceneView(scene: SCNScene(named: items[index].image), options: [.autoenablesDefaultLighting, .allowsCameraControl])
                .frame(width: 300 , height: 300)
                    
            GeometryReader{ proxy -> AnyView in
                
                let height = proxy.frame(in: .global).height
                return AnyView(
                    
                    ZStack{
                        
                        Rectangle()
                            .fill(.white)
                        
                        VStack{
                            
                            Capsule()
                                .fill(Color.black)
                                .frame(width: 60, height: 5)
                                .padding(.top)
                                .padding(.bottom)
                            
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
                                        .offset(x: 60)
                                        
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
                                    
                                    HStack{
                                        Text(items[index].detail)
                                            .offset(y: 40)
                                            .opacity(0.6)
                                    }.frame(width: 300)
                                    
                                    
                                        
                                    
                                    Spacer()
                                    
                                    HStack{
                                        
                                        Button(action:{
                                            
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
                    .offset(y: height - 100)
                    .offset(y: -offset > 0 ? -offset <= (height - 100) ? offset: -(height - 100) : 0)
                    .gesture(DragGesture().updating($gestureOffset, body: {
                        value, out, _ in
                        
                        out = value.translation.height
                        onChange()
                    }).onEnded({ value in
                        
                        let maxHeight = height - 100
                        withAnimation{
                            
                            if -offset > 100 && -offset < maxHeight / 2{
                                offset = -(maxHeight / 1.5)
                            }
                            else {
                                offset = 0
                            }
                            
                            lastOffset = offset
                        }
                    }))
                )
            }
            .ignoresSafeArea(.all, edges: .bottom)
        }
    }
    
    func onChange(){
        DispatchQueue.main.async {
            self.offset = gestureOffset + lastOffset
        }
    }
}

struct Item: Identifiable {
    var id: Int
    var name: String
    var material: String
    var pattern: String
    var SKU: String
    var condition: String
    var price: Double
    var image: String
    var detail: String
}

struct ARMen_Previews: PreviewProvider {
    static var previews: some View {
        CustomiseMen()
    }
}
