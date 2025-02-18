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
  switch n {
    case greater_than_zero(n: n) && isEven(n: n):
        return n / 2
    case greater_than_zero(n: n) && isOdd(n: n):
        return (n * 3) + 1
    default:
        return n
  }
}


print(collatz(n: 12))
