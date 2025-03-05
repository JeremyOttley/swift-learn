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


print(collatz(of: 12))
