print("Please enter your name: ")

let name = readLine()

func greeter(name: String) -> () {
  print("Hello \(name)!")
}

greeter(name: name!)
