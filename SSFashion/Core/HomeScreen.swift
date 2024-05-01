//
//  p3.swift
//  loginPage
//
//  Created by STDC_MACBOOK_37 on 01/08/2023.
//


import SwiftUI

struct HomeScreen: View {
    @State private var showMenu: Bool = false
    @State private var name: String = ""
    
    let user: String
    
    var body: some View {
        NavigationView{
            ZStack{Color("background").ignoresSafeArea()
                VStack{
                    HStack{
                        Button{
                            
                        }label: {
                            
                            Image("User")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 45)
                                .padding(.vertical)
                                .padding(.horizontal)
                                .background(.clear)
                                .clipShape(Capsule())
                        }
                        .offset(x: -55, y: -150)
                        
                        Image("Logo").resizable()
                            .frame(width: 180, height: 180)
                            .offset(x: -45, y: -50)
                    }
                    
                    SliderView()
                        .frame(width: 380,height: 380)
                        .background(Color.gray)
                        .offset(y: -7)
                        
                        
                    
                }.padding()
                
                
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
                
                homeBottomNavView()
                    .offset(y: 370)
                
                Button(action: {
                    self.showMenu.toggle()
                }, label: {
                    
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
                })
                .offset(x: 150, y: -340)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

func placeOrder(){}

struct SliderView: View{
    public let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    @State private var selection = 0
    let images = ["1", "2"]
    var body: some View{
        VStack{
            TabView(selection: $selection){
                ForEach(0..<2){i in
                    Image("\(images[i])").resizable()
                        .frame(width: 380, height: 380)
                    
                }
            }.tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                .onReceive(timer, perform:{_ in
                    withAnimation{
                        selection = selection < 4 ? selection + 1 : 0
                    }
                })
                
        }.padding()
    }
}


struct homeBottomNavView: View{
    var body: some View{
        HStack{
            Button(action: {
                
            }) {
                NavigationLink(destination: HomeScreen(user: "").navigationBarBackButtonHidden(true), label: {
                    Image("Home")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)
                        .padding(.vertical)
                        .padding(.horizontal)
                        .background(.clear)
                        .clipShape(Capsule())
                }).navigationBarBackButtonHidden(true)
            }
            .offset(x: -13)
            
            Button(action: {
                
            }) {
                NavigationLink(destination: CustomiseMen().navigationBarBackButtonHidden(true), label: {
                    Image("Plus")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 10)
                        .background(Color("GrayBonus"))
                        .clipShape(Capsule())
                        .shadow(color: Color.white.opacity(0.1), radius: 5, x: 0, y: 5)
                    
                }).navigationBarBackButtonHidden(true)
            }
            .offset(x: 7)
            
            Button(action: {
                
            }) {
                NavigationLink(destination: Cart().navigationBarBackButtonHidden(true), label: {
                    Image("Cart")
                           .resizable()
                           .scaledToFit()
                           .frame(width: 30)
                           .padding(.vertical)
                           .padding(.horizontal)
                           .background(.clear)
                           .clipShape(Capsule())
                        .shadow(color: Color.white.opacity(0.1), radius: 5, x: 0, y: 5)
                    
                }).navigationBarBackButtonHidden(true)
                
            }
            .offset(x:27)
        }
        .padding()
        .frame(width: 500)
        .background(Color.white)
        
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen(user: "user")
    }
}

