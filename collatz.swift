func greater_than_zero(n: Int) -> Bool {
  return n > 0
}

func is_even(n: Int) -> Bool {
  return n % 2 == 0
}

func is_odd(n: Int) -> Bool {
  return n % 2 != 0
}     

func collatz(n: Int) -> Int {
  switch n {
    case greater_than_zero(n: n) && is_even(n: n):
        return n / 2
    case greater_than_zero(n: n) && is_odd(n: n):
        return (n * 3) + 1
    default:
        return n
  }
}


print(collatz(n: 12))
