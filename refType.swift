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
