//
//  paginaMusicas.swift
//  atividade4-spotify
//
//  Created by Turma01-9 on 31/10/24.
//

import SwiftUI

struct paginaMusicas: View {
    var nome = "XXXXXXXX"
    var artista = "xxxxxxxxx"
    var capa = "xxxxx"
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .top, endPoint: .center).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Spacer()
                AsyncImage(url: URL(string:capa)) {image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }placeholder: {
                    Color.gray
                }.frame(width: 250, height: 250)
                Text(nome)
                Text(artista)
                Spacer()
                HStack{
                    Image(systemName: "shuffle")
                    Image(systemName: "backward.end.fill")
                    Image(systemName: "play.fill")
                    Image(systemName: "forward.end.fill")
                    Image(systemName: "repeat")
                }
                Spacer()
                
            }
        }
    }
}

#Preview {
    paginaMusicas()
}
