//
//  ContentView.swift
//  alura-viagens
//
//  Created by Felipe Araujo on 15/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader {
            view in
            VStack{
                //MARK: -Header
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
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                //
                HStack(content: {
                    Button(action: {
                        print("Hotéis")
                    }) {
                        Text("Hotéis")
                            .font(.custom("Avenir Medium", size: 17))
                            .foregroundColor(Color.pink)
                    }
                    Button(action: {
                        print("Pacotes")
                    }) {
                        Text("Pacotes")
                            .font(.custom("Avenir Medium", size: 17))
                    }
                })
                List{
                    Text("Rio de Janeiro")
                    Text("Ceará")
                    Text("Atibaia")
                    Text("Rio de Janeiro")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
