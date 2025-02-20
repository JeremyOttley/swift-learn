func isVowel(_ char: Character) -> Bool {
    switch true {
    case ["A", "E", "I", "O", "U", "a", "e", "i", "o", "u"].contains(char):
        return true
    default:
        return false
  }
}

func toPigLatin(_ word: String) -> String {

    guard case let (first?, rest) = (word.first, word.dropFirst())
      else { return "" }

  if isVowel(first) {
    return word + "yay"
  } else {
    return rest + String(first) + "ay"
  }
}

print(toPigLatin("Jeremy"))
