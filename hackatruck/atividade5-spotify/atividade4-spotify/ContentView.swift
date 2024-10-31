
import SwiftUI

struct Musicas : Identifiable{
    var id: Int
    var nome: String
    var artista: String
    var capa: String
}


struct ContentView: View {
    let titulo = URL(string: "https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da848e87fa3f340dcb96437279fc")
    
    var arrayMusicas = [
        Musicas(id:1, nome:"Nome1", artista: "artista1", capa: "https://i.scdn.co/image/ab6761610000517413e9de2a029ac0b914d0d869"),
        Musicas(id:2, nome:"Nome1", artista: "artista1", capa: "https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da848e87fa3f340dcb96437279fc"),
        Musicas(id:3, nome:"Nome1", artista: "artista1", capa: "https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da848e87fa3f340dcb96437279fc"),
        Musicas(id:4, nome:"Nome1", artista: "artista1", capa: "https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da848e87fa3f340dcb96437279fc"),
        Musicas(id:4, nome:"Nome1", artista: "artista1", capa: "https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da848e87fa3f340dcb96437279fc"),
        Musicas(id:4, nome:"Nome1", artista: "artista1", capa: "https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da848e87fa3f340dcb96437279fc"),
        Musicas(id:4, nome:"Nome1", artista: "artista1", capa: "https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da848e87fa3f340dcb96437279fc"),
        Musicas(id:4, nome:"Nome1", artista: "artista1", capa: "https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da848e87fa3f340dcb96437279fc"),
        Musicas(id:4, nome:"Nome1", artista: "artista1", capa: "https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da848e87fa3f340dcb96437279fc"),
        Musicas(id:4, nome:"Nome1", artista: "artista1", capa: "https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da848e87fa3f340dcb96437279fc"),
        
    ]
    
    var body: some View {
        NavigationStack{

                ZStack{
                    LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .center).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    VStack{
                        ScrollView{
                            AsyncImage(url: titulo) {image in
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                            }placeholder: {
                                Color.gray
                            }.frame(width: 250, height: 250)
                            HStack{
                                VStack(alignment: .leading){
                                    Text("Titulo").foregroundStyle(.white).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
                                    HStack{
                                        AsyncImage(url: titulo) {image in
                                            image
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                        }placeholder: {
                                            Color.gray
                                        }.frame(width: 30, height: 30).padding(.bottom, 30)
                                        Text("Criador").foregroundStyle(.white)
                                    }
                                }.padding(.leading, 20)
                                Spacer()
                            }
                            ForEach(arrayMusicas) { elemento in
                                HStack{
                                    NavigationLink(destination: paginaMusicas(nome: elemento.nome, artista:elemento.artista, capa:elemento.capa)){
                                        AsyncImage(url: URL(string: elemento.capa)) {image in
                                            image
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                        }placeholder: {
                                            Color.gray
                                        }.frame(width: 50, height: 50).padding(.leading, 20)
                                        VStack(alignment: .leading){
                                            Text(elemento.nome).foregroundStyle(.white)
                                            Text(elemento.artista).foregroundStyle(.white).font(.caption)
                                        }
                                        Spacer()
                                        Image(systemName: "ellipsis").padding(.trailing, 20).foregroundColor(.white)
                                    }
                                }
                            }
                            Spacer()
                        }
                    }
                }
           
        }
        
        }
    }

#Preview {
    ContentView()
}
