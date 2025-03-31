// less performant, more flexible
let text = "Hello World"
let noSpaces = text.filter { $0 != " " }
// Result: "HelloWorld"


//less flexible, more performant
let text = "Hello World"
let noSpaces = text.replacingOccurrences(of: " ", with: "")
// Result: "HelloWorld"
