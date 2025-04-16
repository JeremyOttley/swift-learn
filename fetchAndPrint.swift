import Foundation
import FoundationNetworking

let url = "https://jsonplaceholder.typicode.com/users"


func fetchAndPrintText(from url: URL) {
    URLSession.shared.dataTask(with: url) { data, _, error in
        if let error = error {
            print("Error fetching data: \(error)")
            return
        }
        
        guard let data = data else {
            print("No data received")
            return
        }
        
        if let text = String(data: data, encoding: .utf8) {
            print(text)
        } else {
            print("Unable to convert data to text")
        }
    }.resume()
}

if let url = URL(string: url) {
    fetchAndPrintText(from: url)
}
