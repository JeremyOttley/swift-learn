func greaterThanZero(n: Int) -> Bool {
  return n > 0
}

func isEven(n: Int) -> Bool {
  return n % 2 == 0
}

func isOdd(n: Int) -> Bool {
  return n % 2 != 0
}     

func collatz(n: Int) -> Int {
  guard greaterThanZero(n: n) else {
    print("\(n) is not greater than zero")
    return 0
  }
  switch n {
    case n where isEven(n: n):
        return n / 2
    case n where isOdd(n: n):
        return (n * 3) + 1
    default:
        return n
  }
}


print(collatz(n: 12))
