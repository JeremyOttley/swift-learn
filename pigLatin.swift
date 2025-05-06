import Foundation 

func isVowel(_ char: Character) -> Bool {

    switch true {
    case ["A", "E", "I", "O", "U", "a", "e", "i", "o", "u"].contains(char):
        return true
    default:
        return false
  }

}

func pigLatin(_ s: String) -> String {
  
  let c: Character = s.first!
  
  guard isVowel(c) else {
    return s.dropFirst(1) + String(c) + "ay" 
  }
  

  return s + "yay"

}

let x = pigLatin("Eric")
let y = pigLatin("Gillian")
print(x)
print(y)
