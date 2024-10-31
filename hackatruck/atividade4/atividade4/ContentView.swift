import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color(.gray).ignoresSafeArea()
                VStack{
                    NavigationLink(destination: modoUm()){
                        Text("Modo Um").frame(width: 250, height: 100).background(.pink).cornerRadius(10)
                    }
                    NavigationLink(destination: modoDois()){
                        Text("Modo Dois").frame(width: 250, height: 100).background(.pink).cornerRadius(10)
                    }
                    NavigationLink(destination: modoTres()){
                        Text("Modo Tres")
                            .frame(width: 250, height: 100).background(.pink).cornerRadius(10)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
