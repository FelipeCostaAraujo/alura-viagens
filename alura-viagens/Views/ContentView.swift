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
                
                HeaderView()
                    .frame(width: view.size.width, height: 210, alignment: .top)
                
                List(viagens){ viagem in
                    CelulaViagemView(viagem: viagem)
                }
            }
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
