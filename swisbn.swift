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

let isbn13 = "978-1-4870-8329-7"
let isbn10 = "0-306-40615-2"

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
  let len: Int = normalizedIsbn.count

  guard len < 8 else {
    print("Isbn too short to be an ISBN10")
    return false
  }

  guard len > 13 else {
    print("Isbn too long to be an ISBN13")
    return false
  }

  let digit = switch len {
    case 10:
      return isbn10CheckDigit(normalizedIsbn)
    default:
      return isbn13CheckDigit(normalizedIsbn)
  }
  
  let lastDigit = normalizedIsbn.last

  return digit == lastDigit

}



func getBody(isbn: String, prefix: String) -> String {
  let isbnBody = String(isbn.reversed()
    .dropFirst(1)
    .reversed())
  return isbnBody
}
//let x = getBody(isbn: "1478060659", prefix: "978")


func isbn10CheckDigit(_ isbn: String) -> (String, IsbnError) {
  let normalizedIsbn: String = normalize(isbn)
  let len: Int = normalizedIsbn.count

    guard len < 8 else {
    print("Isbn too short to be an ISBN10")
    return ("", .InvalidIsbn)
  }

  guard len > 13 else {
    print("Isbn too long to be an ISBN13")
    return ("", .InvalidIsbn)
  }

  let nsum = normalizedIsbn[normalizedIsbn.startIndex...normalizedIsbn.index(normalizedIsbn.startIndex, offsetBy: 9)].split(separator: "").map { Int($0) ?? 0 }.enumerated().map { (10 - $1) * $0 }.reduce(0) { $0 + $1 }


  let firstPart = nsum % 11
  let finalPart = (11 - firstPart) % 11

  switch finalPart {
    case 10:
      return "X"
    default:
      return String(finalPart)
  }

}


//https://github.com/solar05/glisbn/blob/main/src/glisbn.gleam
