func fibonacci(_ n: UInt8) -> UInt8 {
 guard n > 1 else {
  return n
 }
  return fibonacci(n - 1) + fibonacci( n - 2)
}

print(fibonacci(12))
