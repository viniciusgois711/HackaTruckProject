//
//  paginaRosa.swift
//  atividade3
//
//  Created by Turma01-9 on 30/10/24.
//

import SwiftUI

struct paginaRosa: View {
    var body: some View {
        ZStack{
            Image(.red).resizable().edgesIgnoringSafeArea(.top)
            Image(systemName: "square.and.arrow.up.circle.fill").resizable().frame(width:200,height: 200)
        }
    }
}

#Preview {
    paginaRosa()
}
