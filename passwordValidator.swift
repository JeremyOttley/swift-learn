import Foundation

//https://i18n-puzzles.com/puzzle/3/

func checkASCII(_ string: String) -> Bool {
    return string.utf8.reduce(true) { $0 && ($1 <= 127) }
}

func hasNonASCII(_ s: String) -> Bool {
  return s.unicodeScalars.contains { $0.value > 127 }
}

func hasLetters(in s: String) -> Bool {
  return s.rangeOfCharacter(from: .letters) != nil
}

func hasDigits(in s: String) -> Bool {
  return s.rangeOfCharacter(from: .decimalDigits) != nil
}

func hasUppers(in s: String) -> Bool {
  return s.rangeOfCharacter(from: .uppercaseLetters) != nil
}

func isPassValid(_ p: String) -> Bool {
  guard p.count >= 4 && p.count <= 12 else {
    print("Character count must be between 4 and 12")
    return false
  }

  guard hasDigits(in: p) else { 
    print("Must have at least one digit")
    return false
  }

  guard hasUppers(in: p) else {
    print("Must have at least one uppercased letter")
    return false
  }
  guard hasLetters(in: p) else {
    print("Must have at least one letter")
    return false
  }

  guard hasNonASCII(p) else {
    print("All characters are 7-bit ASCII")
    return false
  }
  return true
}

let z = isPassValid("nut9ù8nvfjD")
print(z)
