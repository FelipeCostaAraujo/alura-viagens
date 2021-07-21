//
//  HeaderView.swift
//  alura-viagens
//
//  Created by Felipe Araujo on 21/07/21.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        GeometryReader {
            view in VStack{
                VStack(content: {
                    Text("Alura viagens")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Black", size:20))
                        .padding(.top,50)
                    
                    Text("ESPECIAL")
                        .foregroundColor(Color.white)
                        .font(.custom("Avenir Book", size: 20))
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: .none, alignment: .leading)
                        .padding(.leading, 30)
                    
                    Text("BRASIL")
                        .foregroundColor(Color.white).font(.custom("Avenir Black", size: 23))
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: .none, alignment: .leading)
                        .padding(.leading, 30)
                })
                .frame(width: view.size.width , height: 180, alignment: .top)
                .background(Color.purple)
                //
                HStack(content: {
                    Button(action: {
                        print("Hotéis")
                    }) {
                        Text("Hotéis")
                            .font(.custom("Avenir Medium", size: 17))
                            .foregroundColor(.white)
                    }
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth:10))
                    .background(Color.blue)
                    .offset(x: 50)
                    
                    
                    Spacer()
                    
                    Button(action: {
                        print("Pacotes")
                    }) {
                        Text("Pacotes")
                            .font(.custom("Avenir Medium", size: 17))
                            .foregroundColor(.white)
                    }
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth:10))
                    .background(Color.orange)
                    .offset(x: -50)
                    
                })
                .offset(y: -25)
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.fixed(width: 400, height: 220))
    }
}
