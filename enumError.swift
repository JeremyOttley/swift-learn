// Example with real-world usage
enum ValidationResult {
    case success(String)
    case error(Error)
    case pending
}

func handleValidation(_ result: ValidationResult) {
    switch result {
    case .success(let message):
        print("Success: \(message)")
    case .error(let error):
        print("Error: \(error.localizedDescription)")
    case .pending:
        print("Validation in progress")
    }
}
