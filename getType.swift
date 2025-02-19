class A {}
class B: A {}

func getA() -> A {
    return B()
}

let a = getA()
print(type(of: a)) // B
