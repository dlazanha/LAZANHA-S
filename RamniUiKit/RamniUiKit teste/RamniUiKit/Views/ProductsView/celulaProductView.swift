//
//  celulaProductView.swift
//  RamniUiKit
//
//  Created by Diego Araujo Lazanha on 23/07/21.
//

import SwiftUI

struct celulaProductView: View {
    @State var toFormulary = false
    var body: some View {
        ScrollView(.vertical) {
            GeometryReader { view in
                VStack {
                    Button(action:{
                        toFormulary = true
                    }){
                        
                            VStack {
                                Text("Mens")
                                    .frame(minWidth: 0,  maxWidth: view.size.width, alignment: .leading)
                                    .font(.headline)
                                    .padding(.leading, 15)
                                    .padding(.top, 5)
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack {
                                        productView()
                                        productView()
                                        productView()
                                        productView()
                                        
                                    }
                                    
                                }
                                
                            }
                        
                        .sheet(isPresented: $toFormulary) {
                            formularyView()
                        }
                    }
                    Text("Woman")
                        .frame(minWidth: 0,  maxWidth: view.size.width, alignment: .leading)
                        .font(.headline)
                        .padding(.leading, 15)
                        .padding(.top, 5)
                        .foregroundColor(.pink)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            productViewWoman()
                            productViewWoman()
                            productViewWoman()
                            productViewWoman()
                            
                        }
                        
                    }
                    
                    Text("Children")
                        .frame(minWidth: 0,  maxWidth: view.size.width, alignment: .leading)
                        .font(.headline)
                        .padding(.leading, 15)
                        .padding(.top, 5)
                        .foregroundColor(.green)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            productViewChild()
                            productViewChild()
                            productViewChild()
                            productViewChild()
                        }
                        
                    }
                    .navigationBarTitle("xxx")
                    .padding(.leading, -10)
                    .padding(.trailing, -10)
                }
                Divider()
            }
        }
    }
}

struct celulaProductView_Previews: PreviewProvider {
    static var previews: some View {
        celulaProductView()
            .previewLayout(.fixed(width: 700, height: 300))
    }
}
