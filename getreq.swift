import Foundation
import FoundationNetworking

URLSession.shared.dataTask(with: URL(string: "https://thequoteshub.com/api/")!) {(data, response, error) in
    print(String(data: data!, encoding: .utf8) as Any)
}.resume()

