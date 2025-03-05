func collatz(of n: Int) -> Int {
  guard n > 0 else {
    print("\(n) is not greater than zero")
    return 0
  }
  switch n {
    case n where n % 2 == 0:
        return n / 2
    case n where n % 2 != 0:
        return (n * 3) + 1
    default:
        return n
  }
}

let args = [1, 2, 3, 4, 5, 6]
let collatzCollection = args.map { collatz(of: $0) }

print(collatzCollection)
