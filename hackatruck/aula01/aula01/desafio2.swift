//
//  desafio2.swift
//  aula01
//
//  Created by Turma01-9 on 23/10/24.
//

import SwiftUI

struct desafio2: View {
    var body: some View {
        HStack{
            Spacer()
            Image(.girassol)
                .resizable()
                .clipShape(Circle())
            
                .frame(width: 200, height: 200)
            Spacer()
            VStack{
                Text("Hackatruck").foregroundStyle(.red)
                    .font(.system(size:20))
                Text("Challenge2").foregroundStyle(.blue)
                    .font(.system(size:30))
                Text("Vinicius")
            }
            Spacer()
        }
        
    }
}

#Preview {
    desafio2()
}
