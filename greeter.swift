import Foudnation

print("Please enter your name: ")

let name = readLine()

func greet(name: String?) -> String? {
  guard let name = name else {
    print("No name entered!")
    return nil
  }

  guard !name.isEmpty else {
    print("No name entered!")
    return nil
  }
  
  guard !name.allSatisfy({ $0.isWhitespace }) else {
    print("Name cannot be empty or contain only whitespace")
    return nil
  }

  return name

}

if let success = greet(name: "Jeremy") {
  print(success)
}


