import Foundation

func abbreviate(phrase: String) -> String {
  phrase.lowercased
        .capitalized
        .filter { $0.isUppercase }
}

let x = abbreviate(phrase: "jeremy mark ottley")
print(x)
