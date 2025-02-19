let pref = "A" //prefix is a keyword
let suffix = "E"
let ppv = "PPV_BV"


do {
  let isbn = "978-1-4780-2737-9"
  let hyphen = try Regex("-")
  let cleanISBN = isbn.replacing(hyphen, with: "")
  let stub = cleanISBN.dropFirst(7).dropLast()
  let product = pref + stub + suffix 
  print(product)
} catch {
  print("Product does not exist: \(error)")
}

