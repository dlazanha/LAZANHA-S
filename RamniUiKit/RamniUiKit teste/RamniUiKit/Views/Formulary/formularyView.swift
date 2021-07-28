//
//  formularyView.swift
//  RamniUiKit
//
//  Created by Diego Araujo Lazanha on 23/07/21.
//

import SwiftUI

struct formularyView: View {
    var body: some View {
        
        VStack (alignment:.center) {
            Text("Shipping Addres")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundColor(Color.black)
            
            
            
            List {
                
                TextField("Name", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .background(Color(.lightGray))
                    .keyboardType(/*@START_MENU_TOKEN@*/.namePhonePad/*@END_MENU_TOKEN@*/)
                
                
                TextField("Address", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .background(Color(.lightGray))
                TextField("Pincode", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .background(Color(.lightGray))
                    .keyboardType(/*@START_MENU_TOKEN@*/.numberPad/*@END_MENU_TOKEN@*/)
                
            }.frame(height: 200)
            VStack {
                Text(" Payment Method")
                    .font(.headline)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.black)
                List {
                    TextField("Name on Card", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .keyboardType(/*@START_MENU_TOKEN@*/.alphabet/*@END_MENU_TOKEN@*/)
                        .background(Color(.lightGray))
                    TextField("Card Number", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .keyboardType(/*@START_MENU_TOKEN@*/.numberPad/*@END_MENU_TOKEN@*/)
                        .background(Color(.lightGray))
                    VStack {
                        HStack {
                            TextField("Exp date", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                                .keyboardType(/*@START_MENU_TOKEN@*/.numbersAndPunctuation/*@END_MENU_TOKEN@*/)
                                .background(Color(.lightGray))
                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(.lightGray), lineWidth: 3.5))
                            TextField("Val date", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                                .keyboardType(/*@START_MENU_TOKEN@*/.numbersAndPunctuation/*@END_MENU_TOKEN@*/)
                                .background(Color(.lightGray))
                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(.lightGray), lineWidth: 3.5))
                            
                            
                        }
                        Spacer()
                            .frame(height: 300)
                        Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                            
                            Text("OK")
                                .font(.custom("Avenir Black", size: 30))
                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.green, lineWidth: 3.5))
                                .background(Color.green)
                                .foregroundColor(.white)
                                .frame(width: 50, height: 50, alignment: .center)
                        }
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    }
                }
            }
        }
    }
}
func pulsar (_ button: UIButton) {
    let pulsar = CASpringAnimation(keyPath: "transform.scale")
    pulsar.duration = 0.5
    pulsar.fromValue = 0.5
    pulsar.toValue = 1
    pulsar.autoreverses = true
    pulsar.repeatCount = 1
    
    pulsar.initialVelocity = 0.5
    pulsar.damping = 1.0
    
    button.layer.add(pulsar, forKey: nil)
}

struct formularyView_Previews: PreviewProvider {
    static var previews: some View {
        formularyView()
    }
}
