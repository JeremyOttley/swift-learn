import Foundation

URLSession.shared.dataTask(with: URL(string: "https://jsonplaceholder.typicode.com/todos/1")!) { data, response, error in
    // Handle potential errors first
    if let error = error {
        print("Error fetching data: \(error.localizedDescription)")
        return
    }
    
    // Safely unwrap the data
    guard let data = data else {
        print("No data received")
        return
    }
    
    // Print raw response
    if let jsonString = String(data: data, encoding: .utf8) {
        print("Raw JSON response:")
        print(jsonString)
    }
    
    // Decode structured response
    do {
        let todo = try JSONDecoder().decode(Todo.self, from: data)
        print("\nDecoded Todo object:")
        print(todo)
    } catch {
        print("Error decoding JSON: \(error.localizedDescription)")
    }
}.resume()

// Define the structure for our Todo item
struct Todo: Codable {
    let userId: Int
    let id: Int
    let title: String
    let completed: Bool
}
