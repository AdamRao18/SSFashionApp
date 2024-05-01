//
//  SplashScreen.swift
//  loginPage
//
//  Created by STDC_MACBOOK_37 on 25/07/2023.
//

import SwiftUI

struct SplashScreen : View{
    var body: some View{
        ZStack{
            HStack{
                ZStack{
                    Image("LogoBaru")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 600)
                        .offset(y: 35)
                    
                   Image(systemName: "box.fill")
                        .resizable()
                        .overlay(LinearGradient(colors: [Color.white.opacity(0), Color.white.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomLeading))
                       .ignoresSafeArea()
                    
                }
            }
            
            ViewPage()
        }
    }
}
   
struct ViewPage: View{
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View{
        if isActive{
            LoginScreen()
        }else{
            VStack{
                VStack{
                    Image("Logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300)
                        .font(.system(size: 80))
                        .foregroundColor(Color("Color"))
                    Text("Style & Simple")
                        .font(Font.custom("Baskerville-Bold", size: 26))
                        .foregroundColor(.black)
                        .offset(y:  -90)
                }
                .offset(y: -220)
                .scaleEffect(size)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.2)){
                        self.size = 0.9
                        self.opacity = 1.0
                    }
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

    
    
struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
