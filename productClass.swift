class Product {
    var price: Double
    var id: Int 
    var quantity: Int

    init(price: Double, id: Int, quantity: Int) {
        self.price = price
        self.id = id
        self.quantity = quantity
    }

    func sum() -> Int {
        return self.quantity
    }
}

let laptop = Product(price: 480.00, id: 473809, quantity: 127)

print(laptop.sum())
