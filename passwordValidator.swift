//https://i18n-puzzles.com/puzzle/3/

import Foundation

// Create common character sets
let letters = CharacterSet.letters //letters.contains("e")
let digits = CharacterSet.decimalDigits


func checkASCII(_ string: String) -> Bool {
    return string.utf8.reduce(true) { $0 && ($1 <= 127) }
}

// let x = checkASCII("Hello123")  // Prints nothing (all ASCII)
// let y = checkASCII("Hello🌍")   // Prints "error" (contains emoji)

// print(x)
// print(y)

//password requirements

// a length of at least 4 and at most 12
guard s.count >= 4 && s.count <= 12 else {
  print("Character count must be between 4 and 12")
  return false
}
// at least one digit
guard s.count >= 1 else { //digits.contains()
  print("Must have at leasat one digit")
  return false
}
// at least one uppercase letter (with or without accents, examples: A or Ż)
guard // if uppers.contains does not have any member of s
// at least one lowercase letter (with or without accents, examples: a or ŷ)
guard // if lowers.contains does not have any member of s
// at least one character that is outside the standard 7-bit ASCII character set (examples: Ű, ù or ř)
guard checkASCII(s) else {
  print("Not all characters are ASCII")
  return false
}

