//
//  sigInView.swift
//  RamniUiKit
//
//  Created by Diego Araujo Lazanha on 22/07/21.
//

import SwiftUI

struct sigInView: View {
    @State var toVerification = false
    @State var scale: CGFloat = 1
    @State var password = ""
    @State var height : CGFloat = 0
    
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
                    
                    .foregroundColor(Color.black.opacity(0.7))
                    .fontWeight(.bold)
                    .font(.title)
                    .foregroundColor(.red)
                
                
                Divider()
                Spacer()
                    .frame(height: 30)
                
                VStack {
                    TextField("User Name", text: .constant(""))
                        .keyboardType(.emailAddress)
                        .background(Color(.systemFill))
                        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                        .border(Color.black, width: 2)
                        .frame(width: view.size.width, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    
                    Spacer()
                        .frame(height: 30)
                    
                    SecureField("Password", text: self.$password) {
                        
                        validate(password)
                        func validate(_ password: String) {
                            
                        }
                    }
                    
                    .background(Color(.systemFill))
                    .textContentType(/*@START_MENU_TOKEN@*/.password/*@END_MENU_TOKEN@*/)
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .circular))
                    .border(Color.black, width: 2)
                    .frame(width: view.size.width, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .keyboardType(.numberPad)
                    
                }.frame(height: 30)
                Spacer()
                    .frame(height: 70)
                
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
                                .stroke(Color.red)
                                .scaleEffect(scale)
                                .opacity(Double( 5 - scale))
                                .animation (
                                    Animation.easeOut(duration: 1.5)
                                        .repeatForever(autoreverses: false)
                                        .delay(3.0)
                                )
                        )
                        .onAppear {
                            self.scale += 1.8
                        }
                }.frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(11.0)
                
                
                
                
                Button(action:{}) {
                    Text("Forgot Password?")
                        .font(.custom("Avenir Black", size: 17))
                    
                }
                
            }
            .sheet(isPresented: $toVerification) {
                confirmationView()
                                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                                    .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom)
            }
            
        }
        .padding(.bottom, self.height)
        .background(Color.black.opacity(0.03).edgesIgnoringSafeArea(.all))
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            
            NotificationCenter.default.addObserver(forName: UIResponder.keyboardDidShowNotification, object: nil, queue: .main) { (not) in
                
                let data = not.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue
                
                let height = data.cgRectValue.height - (UIApplication.shared.windows.first?.safeAreaInsets.bottom)!
                
                self.height = height
                
                // removing outside safeaera height...
                print(height)
            }
            
            NotificationCenter.default.addObserver(forName: UIResponder.keyboardDidHideNotification, object: nil, queue: .main) { (_) in
                
                print("hidden")
                
                self.height = 0
            }
        }
    }
}

struct sigInView_Previews: PreviewProvider {
    static var previews: some View {
        sigInView()
    }
}
