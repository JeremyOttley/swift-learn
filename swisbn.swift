import Foundation 

enum IsbnError: Error {
  case InvalidIsbn
  case InvalidCheckdigit
  case InvalidLength
  case RegistrantNotFound
}

func isValid(_ isbn: String) -> Bool {
  //turn into Guard?
  isLengthCorrect(isbn) && isCharsCorrect(isbn) && isCheckDigitValid(isbn)
}

func isCheckDigitValid(_ isbn: String) -> Bool {
  let normalizedIsbn = normalize(isbn)
  let len = normalizedIsbn.count
  guard let len > 8 || len < 13 else {
    return false
  }
  switch isbn {
    case len == 10:
      isbn10CheckDigit(normalizedIsbn)
    default:
      isbn13CheckDigit(normalizedIsbn)
  }

  // if let lastDigit = normalizedIsbn.last {
  //   digit == lastDigit
  // }
}

https://github.com/solar05/glisbn/blob/main/src/glisbn.gleam
