// Any most suitable for scenarios where type flexibility is essential and performance isn't critical, such as logging, debugging tools, or legacy system integration.

let mixedArray: [Any] = [
    42,
    "string",
    UIView(),
    CGPoint(x: 0, y: 0)
]

// Accessing values requires type casting
if let number = mixedArray[0] as? Int {
    print("Number: \(number)")
}
