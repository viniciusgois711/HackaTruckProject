import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            paginaRosa().tabItem{
                Label("Vermelho", systemImage: "square.and.arrow.up.circle.fill")
            }
            paginaAzul().tabItem{
                Label("Azul", systemImage: "book.circle.fill")
            }
            paginaCinza().tabItem{
               Label("Cinza", systemImage: "square.and.pencil.circle.fill")
            }
            lista().tabItem{
                Label("Cinza", systemImage: "list.bullet")
            }
        }.background(.white)
    }
}

#Preview {
    ContentView()
}
