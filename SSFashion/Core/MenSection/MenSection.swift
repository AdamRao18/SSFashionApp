//
//  p4.swift
//  app
//
//  Created by STDC_MACBOOK_07 on 27/07/2023.
//

import SwiftUI

struct MenSection: View {
    @State private var showMenu: Bool = false
    
    var body: some View {
        NavigationView{
            ZStack{Color("background").ignoresSafeArea()
                
                VStack{
                    
                    Button{
                        
                    }label: {
                        NavigationLink(destination: TommySunBlue(), label: {
                            HStack{
                            Image("Baju1")
                                .resizable()
                                .frame(width: 150, height: 140)
                                .border(.black, width: 2)
                                .background()
                            Spacer()
                                .frame(width: 90)
                            VStack{
                                Text("Tommy Sun")
                                    .font(.title)
                                    .offset(x: -50)
                                Text("MYR 160.00")
                                    .font(.title2)
                                    .offset(x: -55)
                            }
                        }
                            .border(.black, width: 2)
                            .background(Color("bonus"))
                        }
                        
                    )}
                    
                    Text("")
                    Text("")
                    
                    Button{
                        
                    }label: {
                        NavigationLink(destination: TommySunWhite(), label: {
                            HStack{
                            Image("Baju2")
                                .resizable()
                                .frame(width: 150, height: 150)
                                .border(.black, width: 2)
                                .background()
                            Spacer()
                                .frame(width: 90)
                            VStack{
                                Text("Tommy Sun")
                                    .font(.title)
                                    .offset(x: -50)
                                Text("MYR 160.00")
                                    .font(.title2)
                                    .offset(x: -55)
                            }
                        }.border(.black, width: 2)
                            .background(Color("bonus"))
                        }
                                       
                        )}.offset(y: -20)
                 
                }.offset(y: -100)
                    .foregroundColor(.black)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}


                       

struct MenSection_Previews: PreviewProvider {
    static var previews: some View {
        MenSection()
    }
}
