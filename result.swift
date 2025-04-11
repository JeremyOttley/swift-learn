enum ISBNError: Error {
    case invalidISBN
    case noHyphen
}

let x = "978-1-4780-1029-6"
let y = "9781478010296"

func validateISBN(_ isbn: String) -> Result<String, ISBNError> {
    guard isbn.contains("-") else {
        return .failure(.noHyphen)
    }
    guard isbn.count >= 16 else {
    return .failure(.invalidISBN)
    }
    return .success(isbn)
}

// Usage
let result = validateISBN(x)
switch result {
case .success(let isbn):
    print("Valid ISBN: \(isbn)")
case .failure(let error):
    print("Error: \(error)")
}
