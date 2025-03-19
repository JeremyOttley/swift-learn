import Foundation

let url = "https://api.genderize.io?name="

//{"count":337362,"name":"jeremy","gender":"male","probability":1.0}
struct Response {
  var count: Int
  var name: String
  var gender: String
  var probability: Double
}

let res = Response(count: 33762, name: "jeremy", gender: "male", probability: 1.0)

print(res.gender)
