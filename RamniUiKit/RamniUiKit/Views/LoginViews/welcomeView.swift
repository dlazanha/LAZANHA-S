//
//  welcomeView.swift
//  RamniUiKit
//
//  Created by Diego Araujo Lazanha on 22/07/21.
//

import SwiftUI

struct welcomeView: View {
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @State var toCelulaProduct = false
    @State var scale: CGFloat = 2.0
    
    var body: some View {
        GeometryReader { view in
            VStack {
                ZStack {
                    Image("ramni-free")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(minWidth: 0, maxWidth: .infinity,  maxHeight: .infinity, alignment: .center)
                        .clipped()
                    
                    
                    VStack{
                        Text("Hello")
                            .font(.custom("Avenir Black", size: 30))
                            
                        
                        
                        Text("Wellcome to the Ramni")
                            .font(.custom("Avenir Black", size: 24))
                            .frame(minWidth: 0, maxWidth: view.size.width, alignment: .top)
                        
                    }
                    .frame(width: view.size.width, height: view.size.height, alignment: .top)
                    
                    VStack{
                        Image("perfil")
                            .resizable()
                            .frame(height: 135)
                            .clipped()
                            .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.blue, lineWidth: 10))
                            .frame(width: 100, height: 100, alignment: .center)
                            .clipShape(Circle())
                        
                        Button(action:{}) {
                            Text("Change Profile Picture")
                                .font(.custom("Avenir Black", size: 22))
                                .foregroundColor(.yellow)
                                .frame(minWidth: 0, maxWidth: view.size.width, alignment: .top)
                            
                        }
                        
                    }
                    .frame(width: view.size.width, height: view.size.height, alignment: .center)
                    
                    VStack {
                        Button(action:{}) {
                            Text("UPLOAD PICTURE")
                                .font(.custom("Avenir Black", size: 20))
                                .foregroundColor(.black)
                             Spacer()
                                .frame(width: 30)
                           
                            Button(action:{
                                toCelulaProduct = true
                            }) {
                                
                                Text("SKIP")
                                    .font(.custom("Avenir Black", size: 17))
                                    .foregroundColor(.white)
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
                            
                        }
                        
                        
                        
                        
                    }
                    .sheet(isPresented: $toCelulaProduct) {
                        celulaProductView()
                    }
                    .frame(width: view.size.width, height: view.size.height, alignment: .bottom)
                    
                }
                    
                }
                
               
          
        }
        
        
    }
}

struct welcomeView_Previews: PreviewProvider {
    static var previews: some View {
        welcomeView()
    }
}
