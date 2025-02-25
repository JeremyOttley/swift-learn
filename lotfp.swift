import Foundation
import FoundationNetworking

func genCharacter() async {
  let fetchTask = Task {
    let url = URL(string: "https://character.totalpartykill.ca/basic/json")!
    let (data, _) = try await URLSession.shared.data(from: url)
    return String(decoding: data, as: UTF8.self)
  }
let result = await fetchTask.result
do {
  let resultString = try result.get()
  print(resultString)
} catch {
    print("Unknown error.")
  }
}

await genCharacter()
