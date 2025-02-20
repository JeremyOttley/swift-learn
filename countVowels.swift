func isVowel(_ char: Character) -> Bool {
    switch true {
    case ["a", "e", "i", "o", "u"].contains(char):
        return true
    case ["A", "E", "I", "O", "U"].contains(char):
        return true
    default:
        return false
  }
}

func countVowels(_ word: String) -> Int {
  return word.filter { isVowel($0) }.count
}

let name = "Jeremy"
print(countVowels(name))
