enum UserError: Error {
    case invalidEmail
}

func validateEmail(_ email: String) -> Result<String, UserError> {
    guard email.contains("@") else {
        return .failure(.invalidEmail)
    }
    return .success(email)
}

// Usage
let result = validateEmail("test@example.com")
switch result {
case .success(let email):
    print("Valid email: \(email)")
case .failure(let error):
    print("Error: \(error)")
}
