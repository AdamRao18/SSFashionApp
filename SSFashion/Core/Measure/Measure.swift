//
//  ContentView.swift
//  SwiftUIARKit
//
//  Created by Gualtiero Frigerio on 18/05/21.
//

import SwiftUI

struct Measure: View {
    @ObservedObject var arDelegate = ARDelegate()
    
    var body: some View {
        
        ZStack {
            ARViewRepresentable(arDelegate: arDelegate)
            VStack {
                
                Spacer()
                Text(arDelegate.message)
                    .foregroundColor(Color.primary)
                    .frame(maxWidth: .infinity)
                    .padding(.bottom, 20)
                    .background(Color.secondary)
                NavigationLink(destination: TommySunBlue().navigationBarBackButtonHidden(true), label: {
                    
                    Text("<Back")
                         .foregroundColor(.white)
                }).offset(y: -15)
                    .navigationBarBackButtonHidden(true)
            }
        }
        .edgesIgnoringSafeArea(.all)
            
    }
}

