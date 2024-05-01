//
//  EmailLogin.swift
//  loginPage
//
//  Created by STDC_MACBOOK_37 on 25/07/2023.
//

import SwiftUI

struct EmailLogin: View {
    var body: some View {
        
        Home()
            .preferredColorScheme(.light)
    }
}

struct Home: View{
    
    @State var index = 0
    
    var body: some View{
        GeometryReader{_ in
            NavigationView{
                ZStack{
                    HStack{
                        ZStack{
                            Image("LogoBaru")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 600)
                                .offset(y: 34)
                                .opacity(0.5)
                            
                        }
                    }
                    
                    VStack{
                        Image("Logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200)
                            .font(.system(size: 80))
                            .foregroundColor(Color("Color"))
                            .offset(y: -30)
                        
                        Text("Style & Simple")
                            .font(Font.custom("Baskerville-Bold", size: 26))
                            .foregroundColor(.black.opacity(0.8))
                            .offset(y: -90)
                        
                        ZStack{
                            
                            Signup(index: self.$index)
                                .zIndex(Double(self.index))
                            
                            Login(index: self.$index)
                        }
                    }
                }
            }
            .background(.white).edgesIgnoringSafeArea(.all)
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct Cshape : Shape{
    func path(in rect: CGRect) ->  Path{
        return Path{ path in
            
            path.move(to: CGPoint(x: rect.width, y:100))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: 0))
        }
    }
}

struct Cshape1 : Shape{
    func path(in rect: CGRect) ->  Path{
        return Path{ path in
            
            path.move(to: CGPoint(x: 0, y:100))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width,  y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
        }
    }
}

struct Login: View{
    
    @State var username = ""
    @State var pass = ""
    @State private var WrongUsername = 0
    @State var WrongPassword = 0
    @State var ShowingLoginScreen = false

    @Binding var index: Int
    
    var body: some View{
            ZStack(alignment: .bottom){
                
                VStack{
                    HStack{
                        VStack(spacing: 10){
                            
                            Text("Login")
                                .foregroundColor(self.index == 0 ? .white: Color("GrayBonus"))
                                .font(.title)
                                .fontWeight(.bold)
                            
                            Capsule()
                                .fill(self.index == 0 ? Color.gray : Color.clear)
                                .frame(width: 100, height: 5)
                        }
                        
                        Spacer(minLength: 0)
                    }
                    .padding(.top, 30)
                    
                    VStack{
                        HStack(spacing: 15){
                            
                            Image(systemName: ".fill")
                                .foregroundColor(.white)
                            
                            TextField("Username", text: self.$username)
                        }
                        
                        Divider().background(Color.white)
                    }
                    .padding(.horizontal)
                    .padding(.top, 40)
                    .border(.red, width: CGFloat(WrongUsername))
                    
                    VStack{
                        HStack(spacing: 15){
                            
                            Image(systemName: "eye.slash.fill")
                                .foregroundColor(.white)
                            
                            SecureField("Password", text: self.$pass)
                        }
                        
                        Divider().background(Color.white)
                    }
                    .padding(.horizontal)
                    .padding(.top, 30)
                    .border(.red, width: CGFloat(WrongPassword))
                    
                    HStack{
                        Spacer(minLength: 0)
                        Button(action: {
                            
                        }) {
                            Text("Forget Password?")
                                .foregroundColor(Color.white)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top, 110)
                }
                .padding()
                .padding(.bottom, 33)
                .background(Color("MidnightBlue"))
                .clipShape(Cshape())
                .contentShape(Cshape())
                .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: -5)
                .frame(width: 400)
                .onTapGesture{
                    
                    self.index = 0
                }
                .cornerRadius(35)
                .padding(.horizontal,20)
                
                Button(action: {
                    autheticateUser(username: username, password: pass)
                }) {
                    NavigationLink(destination: showingLoginScreen().navigationBarBackButtonHidden(true), label:{
                        Text("Login")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .padding(.vertical)
                            .padding(.horizontal, 50)
                            .background(Color("GrayBonus"))
                            .clipShape(Capsule())
                            .shadow(color: Color.white.opacity(0.1), radius: 5, x: 0, y: 5)
                        
                        EmptyView()
                    })
                }
                .offset(y: 25)
                .opacity(self.index == 0 ? 1: 0)
                .navigationBarHidden(true)
                
        }
            .offset(y:-70)
    }
    
    func autheticateUser(username: String, password: String){
        if username.lowercased() == "adamrao" {
            WrongUsername = 0
        } else {
            WrongUsername = 1
            
        }
        
        if password.lowercased() == "abc123" {
            WrongPassword = 0
            ShowingLoginScreen = true
        } else {
            WrongPassword = 1
        
        }
    }
}

struct Signup: View{
    
    @State var email = ""
    @State var username = ""
    @State var pass = ""
    @State var Repass = ""
    @Binding var index: Int
    
    var body: some View{
            
        ZStack(alignment: .bottom){
            
            VStack{
                HStack{
                    Spacer(minLength: 0)
                    
                    VStack(spacing: 10){
                        
                        Text("SignUp")
                            .foregroundColor(self.index == 1 ? .white : Color("MidnightBlue"))
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Capsule()
                            .fill(self.index == 1 ? Color("MidnightBlue"): Color.clear)
                            .frame(width: 100, height: 5)
                    }
                    
                }
                .padding(.top, 30)
                
                VStack{
                    HStack(spacing: 15){
                        
                        Image(systemName: "envelope.fill")
                            .foregroundColor(.white)
                        
                        TextField("Email Address", text: self.$email)
                    }
                    
                    Divider().background(Color.white)
                }
                .padding(.horizontal)
                .padding(.top, 40)
                
                VStack{
                    HStack(spacing: 15){
                        
                        Image(systemName: ".fill")
                            .foregroundColor(.white)
                        
                        TextField("Username", text: self.$username)
                    }
                    
                    Divider().background(Color.white)
                }
                .padding(.horizontal)
                .padding(.top, 40)
                
                VStack{
                    HStack(spacing: 15){
                        
                        Image(systemName: "eye.slash.fill")
                            .foregroundColor(.white)
                        
                        SecureField("Password", text: self.$pass)
                    }
                    
                    Divider().background(Color.white)
                }
                .padding(.horizontal)
                .padding(.top, 30)
                
                VStack{
                    HStack(spacing: 15){
                        
                        Image(systemName: "eye.slash.fill")
                            .foregroundColor(.white)
                        
                        SecureField("Password", text: self.$pass)
                    }
                    
                    Divider().background(Color.white)
                }
                .padding(.horizontal)
                .padding(.top, 30)
                
            }
            .padding()
            .padding(.bottom, 36)
            .background(Color("GrayBonus"))
            .clipShape(Cshape1())
            .contentShape(Cshape1())
            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: -5)
            .frame(width: 400)
            .onTapGesture {
                
                self.index = 1
            }
            .cornerRadius(35)
            .padding(.horizontal,20)
            
            Button(action: {
                
            }) {
                NavigationLink(destination: showingSignUpScreen().navigationBarBackButtonHidden(true), label:{
                    Text("SignUp")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .padding(.horizontal, 50)
                        .background(Color("MidnightBlue"))
                        .clipShape(Capsule())
                        .shadow(color: Color.white.opacity(0.1), radius: 5, x: 0, y: 5)
                })
            }
            .offset(y: 25)
            .opacity(self.index == 1 ? 1: 0)
        }
        .offset(y: -70)
    }
}

struct showingLoginScreen: View {
    
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View{
        if isActive{
            HomeScreen(user: "")
        }else{
            VStack{
                Text("Logging in...")
                    .offset(y:  300)
            }
            .offset(y: -220)
            .opacity(opacity)
            .onAppear{
                withAnimation(.easeIn(duration: 1.2)){
                    self.opacity = 1.0
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                    withAnimation{
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct showingSignUpScreen: View {
    
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View{
        if isActive{
            HomeScreen(user: "")
        }else{
            VStack{
                Text("Signing Up...")
                    .offset(y:  300)
            }
            .offset(y: -220)
            .opacity(opacity)
            .onAppear{
                withAnimation(.easeIn(duration: 1.2)){
                    self.opacity = 1.0
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                    withAnimation{
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct EmailLogin_Previews: PreviewProvider {
    static var previews: some View {
        EmailLogin()
    }
}

