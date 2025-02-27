let pref: String = "A" //prefix is a keyword
let suffix: String = "E"
let ppv: String = "PPV_BV"


func processISBN(_ isbn: String) -> String? {
    do {
        let hyphen: Regex<AnyRegexOutput> = try Regex("-")
        let cleanISBN: String = isbn.replacing(hyphen, with: "")
        let stub: Substring = cleanISBN.dropFirst(7).dropLast()
        let product: String = pref + String(stub) + suffix
        return product
    } catch {
        print("Product does not exist: \(error)")
        return nil
    }
}

// Usage
if let result = processISBN("978-1-4780-2737-9") {
    print(result)
}
