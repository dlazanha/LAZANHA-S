//
//  LoginView.swift
//  RamniUiKit
//
//  Created by Diego Araujo Lazanha on 22/07/21.
//

import SwiftUI


struct LoginView: View {
    @State var toLogin = false
    @State var toStarted = false
    @State var scale: CGFloat = 2.0
    
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        
        GeometryReader { view in
            
            ZStack {
                Image("ramni-free")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(minWidth: 0, maxWidth: .infinity,  maxHeight: .infinity, alignment: .center)
                    .clipped()
                    .border(Color.black, width: 2)
                    
                
                VStack {
                    Spacer()
                    Button(action:{
                        toStarted = true
                    }) {
                        Text("GET STARTED")
                            .font(.custom("Avenir Black", size: 15))
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.green, lineWidth: 3.5))
                            .background(Color.green)
                            .foregroundColor(.white)
                        
                    }
                    .border(/*@START_MENU_TOKEN@*/Color.green/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    
                    
                    Spacer()
                        .frame(height: 80)
                    Button(action:{
                        toLogin = true
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Text("SIGN IN")
                            .font(.custom("Avenir Black", size: 17))
                            .background(Color.red)
                            .foregroundColor(.yellow)
                            .overlay(
                               Circle()
                                .stroke(Color.blue)
                                .scaleEffect(scale)
                                .opacity(Double( 5 - scale))
                                .animation (
                                    Animation.easeOut(duration: 1)
                                        .repeatForever(autoreverses: true)
                                )
                            )
                            .onAppear {
                                self.scale += 1
                            }
                    }
                    .frame(height: 40)
                }
                .sheet(isPresented: $toStarted) {
                    welcomeView()
                }
                .sheet(isPresented: $toLogin) {
                    sigInView()
                       
                }
            }
        }
        
    
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
