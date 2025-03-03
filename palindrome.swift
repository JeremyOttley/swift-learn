func palindrome(word: String) -> Bool {
  guard word != "" else {
    print("Error, not a word")
    return false
  } 
  return String(word.reversed()) == word
}

let input = readLine()

print(palindrome(word: input))
