//
//  paginaCinza.swift
//  atividade3
//
//  Created by Turma01-9 on 30/10/24.
//

import SwiftUI

struct paginaCinza: View {
    var body: some View {
        ZStack{
            Image(.gray).resizable().edgesIgnoringSafeArea(.top)
            Image(systemName: "book.circle.fill").resizable().frame(width:200,height: 200)
        }
    }
}

#Preview {
    paginaCinza()
}
