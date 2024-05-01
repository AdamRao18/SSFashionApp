//
//  ContentView.swift
//  loginPage
//
//  Created by STDC_MACBOOK_37 on 24/07/2023.
//

import SwiftUI

struct LoginScreen: View {
    var body: some View {
        NavigationView{
            ZStack{
                HStack{
                    ZStack{
                        Image("LogoBaru")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 600)
                            .offset(y: 124)
                            .opacity(0.5)
                            
                    }
                }
                
                VStack {
                    Image("Logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250)
                        .font(.system(size: 80))
                        .foregroundColor(Color("Color"))
                        .offset(y: 30)
                    
                    Text("SIGN UP / LOG IN WITH:")
                    
                    Button{
                        
                    }label:{
                        
                        HStack{
                            Image("envelope")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30)
                                .foregroundColor(.white)
                            NavigationLink(destination: EmailLogin(), label: {
                                Text("E-mail")
                                    .foregroundColor(.white)
                                    .bold()
                            })
                        }
                        .foregroundColor(.white)
                        .frame(width: 300, height: 60)
                        .background(Color("Email"))
                        .cornerRadius(10)
                        .opacity(0.8)
                        
                        
                    }
                    
                    Button{
                        
                    }label:{
                        
                        HStack{
                            Image("FacebookLogo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30)
                                .foregroundColor(.white)
                            NavigationLink(destination: FacebookLogin(), label: {
                                Text("Facebook")
                                    .foregroundColor(.white)
                                    .bold()
                            })
                        }
                        .foregroundColor(.white)
                        .frame(width: 300, height: 60)
                        .background(Color("Facebook"))
                        .cornerRadius(10)
                        .opacity(0.7)
                    }
                    
                    Button{
                        
                    }label:{
                        
                        HStack{
                            Image("TwitterLogo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30)
                                .foregroundColor(.white)
                            NavigationLink(destination: TwitterLogin(), label: {
                                Text("Twitter")
                                    .foregroundColor(.white)
                                    .bold()
                            })
                        }
                        .foregroundColor(.white)
                        .frame(width: 300, height: 60)
                        .background(Color("Twitter"))
                        .cornerRadius(10)
                        .opacity(0.7)
                    }
                    
                    Button{
                        
                    }label:{
                        
                        HStack{
                            Image("GoogleLogo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30)
                                .foregroundColor(.black)
                            NavigationLink(destination: GoogleLogin(), label: {
                                Text("Google")
                                    .foregroundColor(.black)
                                    .bold()
                            })
                        }
                        .foregroundColor(.white)
                        .frame(width: 300, height: 60)
                        .background(Color.white)
                        .cornerRadius(10)
                        .opacity(0.8)
                    }
                    
                    Text("OR")
                    Text(" ")
                    
                    HStack{
                        Text("Continue as")
                        NavigationLink(destination: HomeScreen(user: ""), label: {
                            Text("guest")
                        })
                    }
                }
            }
            .offset(y: -90)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
