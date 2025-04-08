struct Person {
    var name: String
    var age: Int
}

func updatePerson(_ person: inout Person) { //inout defines a ref type
    person.name = "John"
    person.age = 30
}

var person = Person(name: "Jane", age: 25)
updatePerson(&person) //ref types defined by inout must be accessed with the & symbol
print(person.name) // John

// Use inout When:
    // Modifying external variables is the primary purpose
    // Working with large structs or arrays
    // Performance is critical and copying would be expensive
    // You need to modify multiple external variables in one call
// Avoid inout When:
    // You're just returning a value
    // The parameter isn't modified
    // The operation could be done with regular parameters
    // You're working with simple types (Int, String, etc.)
