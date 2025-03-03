import Foundation

struct Player {
  var name: String
  var highScore: Int = 0
  var history: [Int] = []

  init(_ name: String) {
    self.name = name
  }
}

var player = Player("Jeremy")


extension Player {
  mutating func updateScore(_ newScore: Int) {
    history.append(newScore)
    if highScore < newScore {
      print("\(newScore)! A new high score for \(name)! 🎉")
      highScore = newScore
    }
  }
}

player.updateScore(50)

extension Player: Codable, Equatable {}


do {
  let encoder = JSONEncoder()
  let _ = try encoder.encode(player)
  print(player)
} catch {
  print("Encding error!")
}
