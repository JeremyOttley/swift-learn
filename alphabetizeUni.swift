import Foundation

//https://i18n-puzzles.com/puzzle/12/

let input = ["Ñíguez Peña, María de los Ángeles: 0151605", "Åberg, Rosa-Maria: 0110966", "Özaydın, Zeynep: 0185292", "van den Heyden, Harm: 0168131", "Ämtler, Lorena: 0112717", "Olofsson, Mikael: 0103652", "van Leeuwen, Joke: 0172199", "Vandersteen, Willy: 0120659", "Østergård, Magnus: 0113959", "van Leeuw, Floor: 0144158", "Navarrete Ortiz, Dolores: 0119411", "Aalto, Alvar: 0192872", "Zondervan, Jan Peter: 0103008", "Æbelø, Aurora: 0113267", "O'Neill, Cara: 0109551"]

let separators = CharacterSet(charactersIn: " ,:")
let excludedWords = ["van", "den", "de", "los"]

func keepFirstTwoElements(_ strings: [String]) -> [String] {
    guard strings.count > 2 else { return strings }
    return Array(strings.prefix(2))
}

func flattenStr(_ s: String) -> Array<String> {
  return s.components(separatedBy: separators)
          .filter { !$0.isEmpty }
          .filter { !excludedWords.contains($0) }
}

func alphabetize(text: String) -> Array<String> {
  return keepFirstTwoElements(flattenStr(text).sorted { $0.localizedStandardCompare($1) == .orderedAscending })
}

for n in input {
  print(alphabetize(text: n))
}
