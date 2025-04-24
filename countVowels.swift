func isVowel(_ char: Character) -> Bool {
    switch true {
    case ["A", "E", "I", "O", "U", "a", "e", "i", "o", "u"].contains(char):
        return true
    default:
        return false
  }
}

func countVowels(in word: String) -> Int? {
  guard !word.isEmpty else {
    print("Empty string is not allowed")
    return nil
  }
  return word.filter { isVowel($0) }.count
}

let x = countVowels(in: "Jeremy") ?? 0
print(x)
