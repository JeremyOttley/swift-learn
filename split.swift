let text = "Hello World Swift"
let words = text.components(separatedBy: " ")
// Result: ["Hello", "World", "Swift"]

// Handling multiple spaces
let messyText = "Hello   World   Swift"
let cleanWords = messyText.components(separatedBy: " ").filter { !$0.isEmpty }
// Result: ["Hello", "World", "Swift"]
