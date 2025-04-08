import Foundation

let input = "Jeremy Mark Ottley"

func bEncode(_ s: String) -> String? {
  return s.data(using: .utf8)?.base64EncodedString()
}

func bDecode(_ s: String) -> String? {
  
  guard let data = Data(base64Encoded: s) else { 
    return nil
  }

  return String(data: data, encoding: .utf8)

}

if let x = bEncode(input) {
  print(bDecode(x) ?? "") // ?? is like unwrap_or_default
}
