//
//  ContentView.swift
//  aula02
//
//  Created by Turma01-9 on 24/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State private var showingAlert = false
    var body: some View {
        VStack {
            Text("Bom dia, \(name)").font(.system(size: 40)).bold()
            HStack{
                Spacer()
                TextField("Enter your name",text: $name).multilineTextAlignment(.center)
                
            }
            Spacer()
            ZStack{
                Image(.caminhao).resizable().frame(width: 500, height: 500).opacity(0.2)
                Image(.hacka).opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/).cornerRadius(20)
            }
            Spacer()
            Button("Entrar"){
                showingAlert = true
            }
            .alert(isPresented: $showingAlert){
                Alert(title: Text("ALERTA"), message: Text("Você irá iniciar o desafio agora"), dismissButton: .default(Text("Vamos lá")))
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
