var isbn = "978-1-4780-9328-0"

do {
  let hyphen = try Regex("-")
  let cleanISBN = isbn.replacing(hyphen, with: "")
  print(cleanISBN)
} catch {
  print("Invalid ISBN13: \(error)")
}
