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
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        
        GeometryReader { view in
            
            ZStack {
                Image("ramni-free")
                    .renderingMode(.original)
                    .resizable()
                    .clipped()
                    .aspectRatio(contentMode: .fill)
                    .frame(minWidth: 0, maxWidth: .infinity,  maxHeight: .infinity, alignment: .center)
                    
                    .border(Color.black, width: 2)
                    
                
                VStack {
                    Spacer()
                    Button(action:{
                        toStarted = true
                    }) {
                        Text("GET STARTED")
                            .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 20 : 40))
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
                            .font(.custom("Avenir Black", size: self.horizontalSizeClass == .compact ? 20 : 40))
                            .background(Color.red)
                            .foregroundColor(.yellow)
                            .overlay(
                               Circle()
                                .stroke(Color.blue)
                                .scaleEffect(scale)
                                .opacity(Double( 5 - scale))
                                .animation (
                                    Animation.easeOut(duration: 0.75)
                                        .repeatForever(autoreverses: true)
                                )
                            )
                            .onAppear {
                                self.scale += 1
                            }
                            .overlay(
                               Circle()
                                .stroke(Color.yellow)
                                .scaleEffect(scale)
                                .opacity(Double( 5 - scale))
                                .animation (
                                    Animation.easeOut(duration: 3)
                                        .repeatForever(autoreverses: false)
                                )
                            )
                            .onAppear {
                                self.scale += 1
                            }
                    }
                    
                }
                .padding(.leading, 5)
                .padding(.trailing, 5)
                .padding(.bottom, 50)
                .padding(.top, -5)
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
