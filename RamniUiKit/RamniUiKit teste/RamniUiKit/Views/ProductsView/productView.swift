//
//  productView.swift
//  RamniUiKit
//
//  Created by Diego Araujo Lazanha on 23/07/21.
//

import SwiftUI

struct productView: View {
    @State var toFormulary = false
    var body: some View {
        GeometryReader { view in

                
            VStack (alignment:.center) {
                
                Image("cadeira-gamer-2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 175, height: 200, alignment: .center)
                    .clipped()
                    .clipShape(Rectangle())
                    .shadow(color: .black, radius: 2, x: 5, y: 5)
                
                HStack {
                    Text("$ 1.000")
                        .frame(minWidth: 0,  maxWidth: view.size.width, alignment: .leading)
                        .foregroundColor(.gray)
                        
                    Text("Add")
                        .frame(minWidth: 0,  maxWidth: view.size.width, alignment: .trailing)
                        .foregroundColor(.green)
                    
                }
                
            }
        
            .sheet(isPresented: $toFormulary) {
                formularyView()
            }
        }.frame(width: 180, height: 250, alignment: .center)
        .shadow(radius: 5,x: 1, y:1)
        
        
    }
}


struct productViewWoman: View {
    @State var toFormulary = false
    var body: some View {
        GeometryReader { view in
            ScrollView(.horizontal, showsIndicators: false) {
                VStack (alignment:.center) {
                    
                    Image("cadeira-gamer")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 175, height: 200, alignment: .center)
                        .clipped()
                        .clipShape(Rectangle())
                        .shadow(color: .black, radius: 2, x: 5, y: 5)
                    
                    HStack {
                        Text("$ 1.000")
                            .frame(minWidth: 0,  maxWidth: view.size.width, alignment: .leading)
                            .foregroundColor(.gray)
                            
                        Text("Add")
                            .frame(minWidth: 0,  maxWidth: view.size.width, alignment: .trailing)
                            .foregroundColor(.green)
                        
                    }
                    
                }
            }
            
            
            
      
            .sheet(isPresented: $toFormulary) {
                formularyView()
            }
        }.frame(width: 180, height: 250, alignment: .center)
        .shadow(radius: 5,x: 1, y:1)
        
        
    }
}

struct productViewChild: View {
    @State var toFormulary = false
    var body: some View {
        GeometryReader { view in
            VStack (alignment:.center) {
                
                Image("cadeira-gamer-crianca")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 175, height: 200, alignment: .center)
                    .clipped()
                    .clipShape(Rectangle())
                    .shadow(color: .black, radius: 2, x: 5, y: 5)
                
                HStack {
                    Text("$ 1.000")
                        .frame(minWidth: 0,  maxWidth: view.size.width, alignment: .leading)
                        .foregroundColor(.gray)
                        
                    Text("Add")
                        .frame(minWidth: 0,  maxWidth: view.size.width, alignment: .trailing)
                        .foregroundColor(.green)
                    
                }
                
            }
            .sheet(isPresented: $toFormulary) {
                formularyView()
            }
            
        }.frame(width: 180, height: 250, alignment: .center)
        .shadow(radius: 5,x: 1, y:1)
        
        
    }
}
struct productView_Previews: PreviewProvider {
    static var previews: some View {
        productView()
    }
}
