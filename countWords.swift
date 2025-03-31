import Foundation

func countWords(in str: String) -> Int {
  return str.components(separatedBy: " ")
    .filter { !$0.isEmpty }
    .count
}

let x = countWords(in: "Jeremy was here")

print(y) // 3
