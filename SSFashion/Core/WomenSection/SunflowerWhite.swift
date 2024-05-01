//
//  SunflowerWhite.swift
//  loginPage
//
//  Created by STDC_MACBOOK_37 on 02/08/2023.
//

import SwiftUI
import SceneKit

struct SunflowerWhite: View{
    
    @State var items = [
        
        Item(id: 0, name:"Sunflower White" ,material: "100% Cotton" ,pattern:"Slim Fit" ,SKU: "W01789W", condition: "Excellent" ,price: 160.00 ,image: "SunflowerWhite.usdz" ,detail: "Machine Wash Cold With Similar Fabrics, Do Not Tumble Dry, Do Not Use Fabric Softeners, Wash Dark Color Seperately, Wash And Iron Inside Out, Do Not Iron On Embellishment")
    ]
    @State var digitData = 1
    @State var index = 0
    @State private var showMenu: Bool = false
    
    var body: some View{
        NavigationView{
            
            VStack{
                
                //UpperArea
                UpperNavView()
                    .offset(x:-20 ,y: -65)
                
                //MidArea
                VStack{
                    
                    //3D Background
                    SceneView(scene: SCNScene(named: items[index].image), options: [.autoenablesDefaultLighting, .allowsCameraControl])
                        .frame(width: 300 , height: 300)
                    
                    HStack{
                        
                        VStack{
                            
                            Text(items[index].name)
                                .fontWeight(.heavy)
                            
                            Text("RM \(String(format: "%.2f", items[index].price))")
                                .offset(x: -30)
                        }
                        .offset(x: -100)
                        
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
                    .offset(x:60 ,y:30)
                    .padding(.horizontal, 60)
                    
                    //Try & Measure Button
                    HStack{
                        
                        Button(action:{
                            
                        }, label: {
                            
                            ZStack{
                                
                                Rectangle()
                                    .foregroundColor(Color("MidnightBlue"))
                                    .frame(width: 100, height: 30)
                                    .cornerRadius(20)
                                
                                Rectangle()
                                    .foregroundColor(.white)
                                    .frame(width: 98, height: 28)
                                    .cornerRadius(20)
                                
                               Text("Try With AR")
                                    .foregroundColor(.black)
                            }
                            
                        })
                        
                        Spacer()
                            .frame(width: 20)
                        
                        Button(action:{
                            
                        }, label: {
                            
                            ZStack{
                                
                                Rectangle()
                                    .foregroundColor(Color("MidnightBlue"))
                                    .frame(width: 100, height: 30)
                                    .cornerRadius(20)
                                
                                Rectangle()
                                    .foregroundColor(Color("MidnightBlue"))
                                    .frame(width: 98, height: 28)
                                    .cornerRadius(20)
                                
                               Text("Measure")
                                    .foregroundColor(.white)
                            }
                            
                        })
                    }
                    .offset(y: 60)
                    
                    Button(action:{
                        
                    }, label: {
                        
                        ZStack{
                            
                            Rectangle()
                                .foregroundColor(Color("MidnightBlue"))
                                .frame(width: 130, height: 30)
                                .cornerRadius(20)
                            
                            Rectangle()
                                .foregroundColor(Color("MidnightBlue"))
                                .frame(width: 128, height: 28)
                                .cornerRadius(20)
                            
                           Text("Add To Cart")
                                .foregroundColor(.white)
                        }
                        
                    })
                    .offset(y: 70)
                    
                }
                .offset(y: -99)
                
                
                //BottomNavBar
                homeBottomNavView()
                    .offset(y: 70)
            }
            
            
            
            
        }
        .navigationBarBackButtonHidden(true)
    }
}


struct SunflowerWhite_Previews: PreviewProvider {
    static var previews: some View {
        SunflowerWhite()
    }
}
