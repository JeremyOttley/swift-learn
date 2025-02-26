func batAvg(hits: Double, atBats: Double) -> String {
  let avg = hits / atBats
  switch true {
    case avg <= 0.200:
      return "Turrible"
    case avg <= 0.250:
      return "Aiiight"
    case avg <= 0.280:
      return "Niiiiice"
    default:
      return "JFC!"
  }
}

let avg = batAvg(hits: 3.4, atBats: 49.3)

print(avg)
