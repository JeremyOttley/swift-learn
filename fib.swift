func fibonacci(_ n: Int) -> Int {
 guard n > 1 else {
  return n
 }
  return fibonacci(n - 1) + fibonacci( n - 2)
}

print(fibonacci(12))
