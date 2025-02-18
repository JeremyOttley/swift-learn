let pref = "A" //prefix is a keyword
let suffix = "E"
let ppv = "PPV_BV"


do {
  let isbn = "978-1-4780-2737-9"
  let hyphen = try Regex("-")
  let product = pref + isbn.replacing(hyphen, with: "") + suffix //dropFirst(7), dropLast(), also this is a String.SubSequence and needs to be joined into a string
  print(product)
} catch {
  print("Product does not exist: \(error)")
}
