
import Foundation

class ViewModel : ObservableObject {
    
    @Published var chars : [Frutas] = []
    
    func fetch()
    {
        let task = URLSession.shared.dataTask(with: URL(string:"http://127.0.0.1:1880/getVini")!){ data, _, error in
            do {
                self.chars = try JSONDecoder().decode([Frutas].self, from: data!)
            }catch{
                print(error)
            }
        }
        task.resume()
    }
}
