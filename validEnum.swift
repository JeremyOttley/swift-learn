enum ValidationError: Error {
    case emptyField
    case invalidFormat(String)
}

func validateUsername(_ username: String) throws -> Bool {
    guard !username.isEmpty else {
        throw ValidationError.emptyField
    }
    
    guard username.count >= 3 && username.count <= 15 else {
        throw ValidationError.invalidFormat("Username must be 3-15 characters")
    }
    
    return true
}

// Usage
do {
    let _ = try validateUsername("jottley")
    print("Username is valid")
} catch {
    print("Validation failed: \(error)")
}
