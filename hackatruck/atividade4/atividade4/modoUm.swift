//
//  modoUm.swift
//  atividade4
//
//  Created by Turma01-9 on 30/10/24.
//

import SwiftUI

struct modoUm: View {
    var body: some View {
        ZStack{
            Color(.gray).ignoresSafeArea()
            VStack{
                Text("Modo 1").bold()
                Spacer()
                VStack{
                    Text("Nome: Vinicius")
                    Text("Sobrenome: Góis")
                }.frame(width: 200, height: 150).background(.pink).cornerRadius(10)
                Spacer()
                
            }
        }

    }
}

#Preview {
    modoUm()
}
