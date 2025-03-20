import Foundation

let file = "Screenshot 3-20-2025:91600 [DJoifj4Krfja].mp4"
let regex = /\[(\w+)\](.mp4)/

if let match = file.firstMatch(of: regex) {
    print(match.output.1 + match.output.2) 
}
