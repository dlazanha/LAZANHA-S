//
//  confirmationView.swift
//  RamniUiKit
//
//  Created by Diego Araujo Lazanha on 22/07/21.
//

import SwiftUI

struct confirmationView: View {
    @State var toWelcome = false
    var body: some View {
        GeometryReader { view in
            
            VStack (alignment: .center) {
                Image("ramni-free")
                    .resizable()
                    .clipped()
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
                    .frame(width: 400, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(.leading, -10)
                Divider()
                VStack {
                    Text("COD VERIFICATION")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.red)
                    Spacer()
                        .frame(height: 30)
                    Divider()
                    
                    Text("Cod has been sent to (14) 99876 5432")
                        .font(.custom("Avenir Black", size: 20))
                }.padding()
                
                HStack {
                    TextField("", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .background(Color(.lightGray))
                        .keyboardType(/*@START_MENU_TOKEN@*/.numberPad/*@END_MENU_TOKEN@*/)
                        .padding(.leading, 5)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    
                    TextField("", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .background(Color(.lightGray))
                        .keyboardType(/*@START_MENU_TOKEN@*/.numberPad/*@END_MENU_TOKEN@*/)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    
                    TextField("", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .background(Color(.lightGray))
                        .keyboardType(/*@START_MENU_TOKEN@*/.numberPad/*@END_MENU_TOKEN@*/)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    
                    TextField("", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .background(Color(.lightGray))
                        .keyboardType(/*@START_MENU_TOKEN@*/.numberPad/*@END_MENU_TOKEN@*/)
                        .padding(.trailing, -5)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)

                    
                }
                Spacer()
                    .frame(height: 50)
                Button(action:{
                    toWelcome = true
                }) {
                    Text("VERIFY COD")
                        .font(.custom("Avenir Black", size: 30))
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.green, lineWidth: 5))
//                        .background(Color.green)
                        .foregroundColor(.white)
                        .background(LinearGradient(gradient: .init(colors: [Color(.green),Color(.red)]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(5)
                }
                Spacer()
                    .frame(height: 30)
                Text("Resend COD")
                
            }
        }
        
        .sheet(isPresented: $toWelcome) {
            welcomeView()
        }
    }
}

struct confirmationView_Previews: PreviewProvider {
    static var previews: some View {
        confirmationView()
    }
}
