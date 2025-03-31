import Foundation

struct Car: Codable
{
    let name: String
    let horsePower: Int
    let convert : Bool

    var selected = false
    var index = 0

    enum CodingKeys: String, CodingKey {
        case name, horsePower = "horsepower", convert
    }
}

let json = """
{"name":"Toyota Prius","horsepower":134,"convert":true}
"""

let data = Data(json.utf8)

do {
    let car = try JSONDecoder().decode(Car.self, from: data)
    print(car)
} catch { print(error) }
