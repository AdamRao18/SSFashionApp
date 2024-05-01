//
//  CustomiseMen.swift
//  loginPage
//
//  Created by STDC_MACBOOK_37 on 27/07/2023.
//

import SwiftUI
import AVKit
import AVFoundation

struct CustomiseMen: View {

    @State private var showMenu: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack{
                Color.white.ignoresSafeArea(.all, edges: .all)
                
                VStack{
                    
                    //UpperArea
                    UpperNavView()
                    
                    //MidArea
                    HStack{
                        ARMen()
                    }
                    .offset(y:-155)
                    .padding(.horizontal, 60)

                    
                    //BottomNavBar
                    BottomNavView()
                        .offset(y: 20)
                }
                
                GeometryReader{ _ in
                    HStack{
                        Spacer()
                        SideMenuView()
                            .offset(x: showMenu ? 0: UIScreen.main.bounds.width)
                            .animation(.easeInOut(duration: 0.4), value: showMenu)
                            .offset(x: -85)
                    }
                }
                .background(Color.black.opacity(showMenu ? 0.2: 0))
                
                Button(action: {
                    self.showMenu.toggle()
                }) {
                    
                    if showMenu {
                        Image("X")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 45)
                        .padding(.vertical)
                        .padding(.horizontal)
                        .background(.clear)
                        .clipShape(Capsule())
                        
                    } else {
                        Image("Menu")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 45)
                            .padding(.vertical)
                            .padding(.horizontal)
                            .background(.clear)
                            .clipShape(Capsule())
                    }
                }
                .offset(x:150, y:-350)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct UpperNavView: View{
    var body: some View{
        HStack{
            Button(action: {
                
            }) {
                
                Image("User")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 45)
                    .padding(.vertical)
                    .padding(.horizontal)
                    .background(.clear)
                    .clipShape(Capsule())
            }
            .offset(x:-140, y: -3)
        }
    }
}

struct BottomNavView: View{
    var body: some View{
        HStack{
            Button(action: {
                
            }) {
                NavigationLink(destination: HomeScreen(user: ""), label: {
                    Image("Home")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                        .padding(.vertical)
                        .padding(.horizontal)
                        .background(.clear)
                        .clipShape(Capsule())
                })
            }
            .offset(x: -13)
            
            Button(action: {
                
            }) {
                
                Image("Plus")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 10)
                    .background(Color("GrayBonus"))
                    .clipShape(Capsule())
                    .shadow(color: Color.white.opacity(0.1), radius: 5, x: 0, y: 5)
            }
            .offset(x: 7)
            
            Button(action: {
                
            }) {
                    Image("Cart")
                           .resizable()
                           .scaledToFit()
                           .frame(width: 30)
                           .padding(.vertical)
                           .padding(.horizontal)
                           .background(.clear)
                           .clipShape(Capsule())  
            }
            .offset(x:27)
        }
        .padding()
        .frame(width: 500)
        .background(Color.white)
        .navigationBarBackButtonHidden(true)
    }
}
    
//SideNavBar
struct SideMenuView: View{
    var body: some View{
        VStack{
            Image("Logo")
                .offset(x: -95, y: -60)
            
            Spacer()
            
            Button(action:{
                
            }) {
                NavigationLink(destination: MenSection(), label: {
                    
                    Text("MEN")
                        .foregroundColor(.white)
                        .frame(width: 200, height: 60)
                        .background(Color("MidnightBlue"))
                        .cornerRadius(10)
                        .opacity(0.7)
                })
            }
            .offset(y: -420)
            
            Button(action:{
                
            }) {
                NavigationLink(destination: WomenSection(), label: {
                    
                    Text("WOMEN")
                        .foregroundColor(.white)
                        .frame(width: 200, height: 60)
                        .background(Color("MidnightBlue"))
                        .cornerRadius(10)
                        .opacity(0.7)
                })
            }
            .offset(y: -410)
            
            Divider()
                .frame(width: 160, height: 2)
                .background(Color("MidnightBlue"))
                .padding(.horizontal, 16)
                .offset(y: -370)
            
            Text("Customer Service")
                .offset(y: -370)
            
            Text("Gift Card")
                .offset(y: -360)
            
            HStack{
                Text("Customise")
                Text("PRO")
                    .foregroundColor(.black)
                    .frame(width: 40, height: 30)
                    .background(Color.yellow)
                    .cornerRadius(10)
                    .opacity(0.7)
            }
            .offset(y: -363)
        }
        .padding(40)
        .background(Color.white)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct CustomiseMen_Previews: PreviewProvider {
    static var previews: some View {
        CustomiseMen()
    }
}


