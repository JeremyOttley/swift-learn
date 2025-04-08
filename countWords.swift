import Foundation

let input = "Hello, my name is Jeremy Mark Ottley. I am the digital content manager at Duke University Press (DUP)"

func countWords(in s: String) -> Int {
  return s.components(separatedBy: [",", ".", " ",]).count
}

let x = countWords(in: input)
print(x) // 20
