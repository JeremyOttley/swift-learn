import Foundation 

enum IsbnError: Error {
  case InvalidIsbn
  case InvalidCheckdigit
  case InvalidLength
  case RegistrantNotFound
}

struct Regions {
  let `prefix`: String
  let name: String
  let ranges: [[String]]
}

func isValid(_ isbn: String) -> Bool {
  //turn into Guard?
  isLengthCorrect(isbn) && isCharsCorrect(isbn) && isCheckDigitValid(isbn)
}

func normalize(_ isbn: String) -> String {
  guard isbn.count > 16 else {
    print("Not a valid ISBN13")
    return ""
  }
	return isbn.filter { $0 != "-" }
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


func getBody(isbn: String, prefix: String) -> String {
  let isbnBody = String(isbn.reversed()
    .dropFirst(1)
    .reversed())
  return isbnBody
}
//let x = getBody(isbn: "1478060659", prefix: "978")


//https://github.com/solar05/glisbn/blob/main/src/glisbn.gleam
