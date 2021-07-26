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
           
            VStack {
                Image("ramni-free")
                    .resizable()
                    
                    .clipped()
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
                    .frame(height: 250)
                Divider()
                VStack {
                    Text("COD VERIFICATION")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.red)
                    Spacer()
                        .frame(height: 30)
                    Divider()
                    
                    Text("Cod has been sent to 998765432")
                        .font(.custom("Avenir Black", size: 20))
                }
                
                HStack {
                    TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .background(Color(.lightGray))
                        .keyboardType(/*@START_MENU_TOKEN@*/.numberPad/*@END_MENU_TOKEN@*/)
                    TextField("Placeholder", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .background(Color(.lightGray))
                        .keyboardType(/*@START_MENU_TOKEN@*/.numberPad/*@END_MENU_TOKEN@*/)
                    TextField("Placeholder", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .background(Color(.lightGray))
                        .keyboardType(/*@START_MENU_TOKEN@*/.numberPad/*@END_MENU_TOKEN@*/)
                    TextField("Placeholder", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .background(Color(.lightGray))
                        .keyboardType(/*@START_MENU_TOKEN@*/.numberPad/*@END_MENU_TOKEN@*/)


                }
                 
                Button(action:{
                        toWelcome = true
                    }) {
                        Text("VERIFY COD")
                            .font(.custom("Avenir Black", size: 30))
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.green, lineWidth: 5))
                            .background(Color.green)
                            .foregroundColor(.white)
                        
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
