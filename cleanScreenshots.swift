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

let extensions: [String] = [".jpg", ".png", ".bmp", ".jpeg", "webm", ".jxl"]
func isImage(_ f: String) -> Bool {
  switch true {
      case extensions.filter { f.contains($0) }.count != 0:
      return true
    default:
      return false
  }
}


func moveFile(from sourceURL: URL, to destinationURL: URL) throws {
    // Check if file exists at destination
    if FileManager.default.fileExists(atPath: destinationURL.path) {
        try FileManager.default.removeItem(at: destinationURL)
    }
    
    // Attempt to move the file
    try FileManager.default.moveItem(at: sourceURL, to: destinationURL)
}

let regex = /\[(\w+)\](.mp4)/
let dir: [String] = listFilesInCurrentDirectory().filter { isImage($0) }
for img in dir {
  if let match = img.firstMatch(of: regex) {
    let newName = "\(match.output.1)\(match.output.2)"
    try moveFile(from: URL(fileURLWithPath:img), to: URL(fileURLWithPath: newName)) 
  }
}


// let file = "Screenshot 3-20-2025:91600 [DJoifj4Krfja].mp4"


