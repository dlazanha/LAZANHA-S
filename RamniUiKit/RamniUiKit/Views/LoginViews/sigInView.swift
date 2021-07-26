//
//  sigInView.swift
//  RamniUiKit
//
//  Created by Diego Araujo Lazanha on 22/07/21.
//

import SwiftUI

struct sigInView: View {
    @State var toVerification = false
    @State var scale: CGFloat = 2
    
    var body: some View {
        GeometryReader {view in
            VStack(spacing: 5.0) {
                Image("ramni-free")
                    .resizable()
                    .frame(height: 235)
                    .clipped()
                    .border(Color.black, width: 2)
                Spacer()
                    .frame(height: 30)
                Divider()
                
                Text("SIGN IN")
                    .font(.title)
                    .foregroundColor(.red)
                Divider()
                Spacer()
                    .frame(height: 30)
                
                VStack {
                    TextField("User Name", text: .constant(""))
                        .keyboardType(.emailAddress)
                        .background(Color(.lightGray))
                        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    
                    
                    Spacer()
                        .frame(height: 30)
                    
                    TextField("Password", text: .constant(""))
                        .keyboardType(.numberPad)
                        .background(Color(.lightGray))
                        .textContentType(/*@START_MENU_TOKEN@*/.password/*@END_MENU_TOKEN@*/)
                        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                        .frame(width: view.size.width, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                Spacer()
                    .frame(height: 30)
                
                Button(action:{
                    toVerification = true
                }) {
                    Text("SIGN IN")
                        .font(.custom("Avenir Black", size: 30))
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.green, lineWidth: 5))
                        .background(Color.green)
                        .foregroundColor(.white)
                        .frame(width: view.size.width, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        .overlay(
                           Circle()
                            .stroke(Color.yellow)
                            .scaleEffect(scale)
                            .opacity(Double( 5 - scale))
                            .animation (
                                Animation.easeOut(duration: 1.5)
                                    .repeatForever(autoreverses: true)
                            )
                        )
                        .onAppear {
                            self.scale += 1
                        }
                }
            
                .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(11.0)
                
                
                Button(action:{}) {
                    Text("Forgot Password?")
                        .font(.custom("Avenir Black", size: 17))
                    
                }
            }
            .sheet(isPresented: $toVerification) {
                confirmationView()
            }
            .keyboardType(.default)
        }
    }
}

struct sigInView_Previews: PreviewProvider {
    static var previews: some View {
        sigInView()
    }
}
