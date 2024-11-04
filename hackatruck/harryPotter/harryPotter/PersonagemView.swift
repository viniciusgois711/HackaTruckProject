//
//  PersonagemView.swift
//  harryPotter
//
//  Created by Turma01-9 on 04/11/24.
//

import SwiftUI

struct PersonagemView: View {
    let personagem: HaPo
    var body: some View {
        VStack{
            Spacer()
            AsyncImage(url: URL(string: personagem.image!)) {image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }placeholder: {
                Color.gray
            }.frame(width: 200, height: 200).cornerRadius(100)
            Spacer()
            Text(personagem.name!)
            Text(personagem.gender!)
            Text(personagem.house!)
            Spacer()
        }
        
    }
}
//
//#Preview {
//    PersonagemView(personagem: HaPo(id: "1", name: "Harry", gender: nil, house: nil, image: nil))
//}
