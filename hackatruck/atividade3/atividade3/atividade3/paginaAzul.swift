//
//  paginaAzul.swift
//  atividade3
//
//  Created by Turma01-9 on 30/10/24.
//

import SwiftUI

struct paginaAzul: View {
    var body: some View {
        ZStack{
            Image(.blue).resizable().edgesIgnoringSafeArea(.top)
            Image(systemName: "square.and.pencil.circle.fill").resizable().frame(width:200,height: 200)
        }
    }
}

#Preview {
    paginaAzul()
}
