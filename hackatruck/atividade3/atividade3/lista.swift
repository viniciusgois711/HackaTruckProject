//
//  lista.swift
//  atividade3
//
//  Created by Turma01-9 on 30/10/24.
//

import SwiftUI

struct lista: View {
    var body: some View {
        NavigationView{
            List{
                HStack{
                    Text("Lista")
                    Spacer()
                    Image(systemName: "paintbrush")
                }
                HStack{
                    Text("Lista")
                    Spacer()
                    Image(systemName: "paintbrush")
                }
                HStack{
                    Text("Lista")
                    Spacer()
                    Image(systemName: "paintbrush")
                }
            }.navigationTitle("Menu")
        }
    }
}

#Preview {
    lista()
}
