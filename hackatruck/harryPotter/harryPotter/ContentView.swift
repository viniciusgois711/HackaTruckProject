//
//  ContentView.swift
//  harryPotter
//
//  Created by Turma01-9 on 04/11/24.
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
                        
                        ForEach(viewModel.chars){ personagem in
                                HStack{
                                    NavigationLink(destination:PersonagemView(personagem: personagem)){
                                        HStack{
                                            
                                            AsyncImage(url: URL(string: personagem.image!)) {img in
                                                img
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                            }placeholder: {
                                                Color.gray
                                            }.frame(width: 100, height: 100).cornerRadius(100)
                                            Text(personagem.name!).foregroundColor(.white)
                                            Spacer()
                                        }.padding(.leading, 30)
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
    }
    


#Preview {
    ContentView()
}
