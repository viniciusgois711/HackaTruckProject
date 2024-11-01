import SwiftUI
import MapKit

struct SheetView: View {
    var name: String
    var flag: String
    var description: String
    var body: some View {
        
        AsyncImage(url: URL(string: flag)) {image in
            image
                .resizable()
                .aspectRatio(contentMode: .fill)
        }placeholder: {
            Color.gray
        }.frame(width: 100, height: 50)
            .onTapGesture {
                
            }
        Text(name)
        Text(description)
    }
}
    struct Location: Identifiable{
        let id = UUID()
        let name: String
        let coordinate: CLLocationCoordinate2D
        let flag: String
        let description: String
    }
    
    struct ContentView: View {
        @State private var showingSheet = false
        
        var locais = [
            Location(name: "Brasil", coordinate:CLLocationCoordinate2D(latitude: -8.72912400689926, longitude:  -55.35964851836941), flag:"https://s1.static.brasilescola.uol.com.br/be/conteudo/images/2-bandeira-do-brasil.jpg", description: "descricao"),
            Location(name: "RN", coordinate:CLLocationCoordinate2D(latitude: -5.781909, longitude:  -35.193091), flag:"https://s1.static.brasilescola.uol.com.br/be/conteudo/images/2-bandeira-do-brasil.jpg", description: "descricao"),
            Location(name: "RN", coordinate:CLLocationCoordinate2D(latitude: -5.781909, longitude:  -35.193091), flag:"https://s1.static.brasilescola.uol.com.br/be/conteudo/images/2-bandeira-do-brasil.jpg", description: "descricao"),
        ]
        
        
        
        @State private var position = MapCameraPosition.region(
            MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: -5.781909, longitude: -35.193091), span:MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10)
            )
        )
        
        var body: some View {
            ZStack{
                
                VStack{
                    Map(position: $position){
                        ForEach(locais) {elementos in
                            Annotation("", coordinate: elementos.coordinate) {
                                Image(systemName: "star.circle")
                                    .resizable()
                                    .foregroundStyle(.red)
                                    .frame(width: 44, height: 44)
                                    .background(.white)
                                    .clipShape(.circle)
                                    .onTapGesture {
                                        showingSheet.toggle()
                                        
                                        
                                        
                                    }.sheet(isPresented: $showingSheet) {
                                        SheetView(name: elementos.name, flag: elementos.flag, description: elementos.description)
                                    }
                                
                            }
                            
                            
                        }
                    }
                }
                VStack{
                    Spacer()
                    HStack{
                        
                        Spacer()
                        ForEach(locais){elementos in
                            AsyncImage(url: URL(string: elementos.flag)) {image in
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                            }placeholder: {
                                Color.gray
                            }.frame(width: 100, height: 50)
                                .onTapGesture {
                                    
                                    
                                    position = MapCameraPosition.region(
                                        MKCoordinateRegion(
                                            center: CLLocationCoordinate2D(latitude: elementos.coordinate.latitude, longitude: elementos.coordinate.longitude), span:MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10)
                                        )
                                    )
                                    
                                }
                        }
                        
                        Spacer()
                    }
                }
            }
        }
    }
    




#Preview {
    ContentView()
}
