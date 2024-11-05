//
//  ContentView.swift
//  criandoAPIFrutas
//
//  Created by Turma01-9 on 05/11/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color(.red).ignoresSafeArea()
                VStack{
                    ScrollView{
                        
                        AsyncImage(url: URL(string:"https://wallpaper4k.top/wp-content/uploads/2023/11/Gryffindor-Gryffindor-Wallpaper-7748568-1024x640.jpg")) {img in
                            img
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                        }placeholder: {
                            Color.gray
                        }.frame(width: 300, height: 300).padding(.bottom, 50)
                        
                        ForEach(viewModel.chars, id: \.self){ personagem in
                            HStack{
                                
                                    HStack{
                                        
                                        AsyncImage(url: URL(string: personagem.foto!)) {img in
                                            img
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                        }placeholder: {
                                            Color.gray
                                        }.frame(width: 100, height: 100).cornerRadius(100)
                                        Text(personagem.fruta!).foregroundColor(.white)
                                        
                                    }
                                }
                            }
                        }
                        
                    }
                }.onAppear(){
                   viewModel.fetch()
                }
            }
        }
    }


#Preview {
    ContentView()
}
