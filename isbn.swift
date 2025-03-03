let isbn = "978-1-4870-8329-7"

func deHyphenate(isbn: String) -> String {
  guard isbn.count > 16 else {
    print("Not a valid ISBN13")
    return ""
  }
	return isbn.filter { $0 != "-" }
}

print(deHyphenate(isbn: isbn)) //9781487083297
