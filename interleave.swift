func interleave(_ a: [Any], _ b: [Any]) -> Array<(Any,Any)> {
  return Array(zip(a, b))
}

let x = [1, 2, 3]
let y = ["a", "b", "c"]

print(interleave(x, y)
