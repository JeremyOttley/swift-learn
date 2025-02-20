func isVowel(_ char: Character) -> Bool {
    switch true {
    case ["A", "E", "I", "O", "U", "a", "e", "i", "o", "u"].contains(char):
        return true
    default:
        return false
  }
}

func toPigLatin(_ word: String) -> String {
  if isVowel(word[word.startIndex]) {
    return word + "yay"
  } else {
    return word.dropFirst() + String(word.first!) + "ay"
  }
}

print(toPigLatin("Jeremy"))
