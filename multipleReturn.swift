import Foundation

func split(name: String) -> (firstName: String, lastName: String) {
    let split = name.components(separatedBy: " ")
    return (split[0], split[1])
}

let person = split(name: "Jeremy Ottley")
print("Hi \(person.firstName)!")
