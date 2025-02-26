import Foundation

func listFilesInCurrentDirectory() -> [String] {
    // Get the current working directory's URL
    let currentDirectoryURL = URL(fileURLWithPath: FileManager.default.currentDirectoryPath)
    var fileList: [String] = []
    
    do {
        // Get the contents of the directory
        let directoryContents = try FileManager.default.contentsOfDirectory(
            at: currentDirectoryURL, 
            includingPropertiesForKeys: nil
        )
        
        // Extract just the file names from the URLs
        fileList = directoryContents.map { $0.lastPathComponent }
        
        return fileList
    } catch {
        print("Error reading directory contents: \(error.localizedDescription)")
        return []
    }
}

// Generate random string to use as filename
func generateRandomString(length: Int, characterSet: String = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789") -> String {
    // Handle edge case of length <= 0
    guard length > 0 else { return "" }
    
    // Create an empty string that we'll build character by character
    var randomString = ""
    
    // Convert our character set to an array for easy random selection
    let characters = Array(characterSet)
    
    // Loop 'length' times to build our string
    for _ in 0..<length {
        // Select a random character from our character set
        let randomIndex = Int.random(in: 0..<characters.count)
        let randomCharacter = characters[randomIndex]
        
        // Append the random character to our result string
        randomString.append(randomCharacter)
    }
    
    return randomString
}

func isImage(_ f: String) -> Bool {
  let extensions: [String] = [".jpg", ".png", ".bmp", ".jpeg", ".jxl"]
  switch true {
      case extensions.filter { f.contains($0) }.count != 0:
      return true
    default:
      return false
  }
}

let validChars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

let dir: [String] = listFilesInCurrentDirectory().filter { isImage($0) }
for img in dir {
  print("\(generateRandomString(length: 16, characterSet: validChars)).\(img.pathExtension)")
}
