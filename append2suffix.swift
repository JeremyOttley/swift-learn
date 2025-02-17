import Foundation

func append2suffix(f: String) -> String {

  // Get filename without extension
  let baseName = URL(fileURLWithPath: f)
    .deletingPathExtension()
    .lastPathComponent

  // Get extension
  let ext = URL(fileURLWithPath: f).pathExtension
  
  let newName = baseName + "2" + "." + ext
  return newName
}

if let input = readLine() {
  print(append2suffix(f: input))
}
