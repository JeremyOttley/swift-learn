let pref: String = "A" //prefix is a keyword
let suffix: String = "E"
let ppv: String = "PPV_BV"


do {
  let isbn: String = "978-1-4780-2737-9"
  let hyphen: Regex<AnyRegexOutput> = try Regex("-")
  let cleanISBN: String = isbn.replacing(hyphen, with: "")
  let stub: Substring = cleanISBN.dropFirst(7).dropLast()
  let product: String = pref + stub + suffix 
  print(product)
} catch {
  print("Product does not exist: \(error)")
}
