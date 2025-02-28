import Foundation 
import FoundationNetworking
//import FoundationXML

typealias Fortune = String

enum Sign: String {
    case Aries
    case Taurus
    case Gemini
    case Cancer
    case Leo
    case Virgo
    case Libra
    case Scorpio
    case Sagittarius
    case Capricorn
    case Aquarius
    case Pisces
}

typealias Horoscope = (sign: Sign, fortune: Fortune)

func genHoroscope(_ sign: Sign ) async {
  let fetchTask = Task {
    let url = URL(string: "https://www.astrology.com/horoscope/daily/\(sign).html")!
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

await genHoroscope(.Libra)

//let horoscope: Horoscope = (sign: .Leo, fortune: "A new opportunity will arise today.")
//print(horoscope.sign) 
//print(horoscope.fortune)
//https://www.astrology.com/horoscope/daily/\(sign).html
