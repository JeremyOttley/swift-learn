print("Please enter your name: ")

let name = readLine()

func greeter(_ name: String) -> () {
  
  guard !name.isEmpty else {
    print("No name entered!")
    return
  }
  guard !name.allSatisfy({ $0.isWhitespace }) else {
          print("Name cannot be empty or contain only whitespace")
          return
      }

  print("Hello \(name)!")
}

greeter(name: name!)
