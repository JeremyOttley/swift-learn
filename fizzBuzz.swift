import Foundation

func fizzBuzz(_ n: Int) {
	switch n {
		case n where n.isMultiple(of: 3):
			print("Fizz")
		case n where n.isMultiple(of: 5):
			print("Buzz")
		case n where n.isMultiple(of: 3) && n.isMultiple(of: 5):
			print("FizzBuzz")
		default:
			print("\(n)")
	}
}

fizzBuzz(4)
