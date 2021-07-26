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
            VStack {
                
                Image("cadeira-gamer-2")
                    .resizable()
                    .padding(.leading, 15)
                    .aspectRatio(contentMode: .fill)
                    .clipped()
//                    .sheet(isPresented: $toFormulary) {
//                        formularyView()
//                    }
                
                HStack {
                    Text("$ 1.000")
                        .frame(minWidth: 0,  maxWidth: view.size.width, alignment: .leading)
                    Text("Yes")
                        .frame(minWidth: 0,  maxWidth: view.size.width, alignment: .trailing)
                    
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
