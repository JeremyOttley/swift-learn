//// Creating Data

// From bytes
let data = Data(bytes: [0x68, 0x65, 0x6c, 0x6c, 0x6f]) // Hello in ASCII

// From string
let string = "Hello"
let stringData = string.data(using: .utf8)! // Force unwrap for demonstration

// From array
let array = [UInt8](string.utf8)
let arrayData = Data(array)

// Empty data
let emptyData = Data()


//// Basic Operations

// Append data
var mutableData = Data()
mutableData.append(contentsOf: [0x68, 0x65]) // He
mutableData.append(contentsOf: [0x6c, 0x6c, 0x6f]) // llo

// Get bytes
let bytes = Array(mutableData) // [0x68, 0x65, 0x6c, 0x6c, 0x6f]

// Access single byte
if let firstByte = mutableData.first {
    print(firstByte) // 0x68
}

// Get count
print(mutableData.count) // 5


//// Subdata Operations

let originalData = Data(bytes: [0x68, 0x65, 0x6c, 0x6c, 0x6f])
let prefix = originalData.prefix(2) // First 2 bytes
let suffix = originalData.suffix(2) // Last 2 bytes
let rangeData = originalData.subdata(in: 1..<3) // Middle bytes, subdata is more memory efficient than an Array Slice


//// Common Patterns

// Reading data in chunks
func processChunks(of data: Data, size: Int) -> [Data] {
    var chunks = [Data]()
    var remaining = data
    
    while !remaining.isEmpty {
        let chunkSize = min(size, remaining.count)
        chunks.append(remaining.prefix(chunkSize))
        remaining = remaining.dropFirst(chunkSize)
    }
    
    return chunks
}

// Converting to/from String
extension Data {
    func toString() -> String? {
        String(data: self, encoding: .utf8)
    }
    
    static func fromString(_ string: String) -> Data? {
        string.data(using: .utf8)
    }
}


////Error Handling: Always handle encoding/decoding errors appropriately rather than force-unwrapping:

// guard let encodedData = string.data(using: .utf8) else {
     // Handle encoding failure
//     return
// }

//// Performance: For sequential reading of data, consider creating a custom DataStream class

class DataStream {
    let data: Data
    var position = 0
    
    init(data: Data) {
        self.data = data
    }
    
    func read(count: Int) -> Data? {
        guard position + count <= data.count else { return nil }
        defer { position += count }
        return data.subdata(in: position..<position + count)
    }
}
