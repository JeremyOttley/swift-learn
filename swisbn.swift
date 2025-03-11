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

// func isValid(_ isbn: String) -> Bool {
//   //turn into Guard?
//   isLengthCorrect(isbn) && isCharsCorrect(isbn) && isCheckDigitValid(isbn)
// }

func isValid(_ isbn: String) -> Bool {
  guard isLengthCorrect(isbn) else {
    print("Length is not correct!")
    return false
  } 
  
  guard isCharsCorrect(isbn) else {
    print("Characters are not correct!")
    return false
  } 
  
  guard isCheckDigitValid(isbn) else {
    print("Check digit is invalid!")
    return false
  }
  return true
}

// Correct?
func isHyphensCorrect(_ isbn: String) -> Bool {
  switch isCorrect(isbn) {
    case hyphenate(isbn): // if hyphenate(isbn) results in a success then
      return true
    default:
      return false
  }
}

func isLengthCorrect(_ isbn: String) -> Bool {
  let len: Int = isbn.count
  return len == 10 || len == 13 || len == 17
}

func isIsbn10(_ isbn: String) -> Bool {
  let len: Int = normalize(isbn).count
  return len == 10
}

func isCorrect(isbn: String) -> Bool {
  return isValid(normalize(isbn))
}

func isDigit(_ ch: Character) -> Bool {
  return ch.isNumber
}

func normalize(_ isbn: String) -> String {
  return String(Array(isbn).filter { isDigit($0) || $0 == "X" })
}

func isCharsCorrect(_ isbn: String) -> Bool {
  return isLengthCorrect(normalize(isbn))
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
