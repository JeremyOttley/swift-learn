//https://i18n-puzzles.com/puzzle/1/

// Write a program that checks whether messages are valid as SMS and / or valid as (old-style) Tweet3. 

//Your input is a list of messages in different languages, one on each line, in UTF-8 format. 

//The message broker expects UTF-8 format as well. Calculate your total bill with the message broker, assuming that you will not send any messages that are too long. 

//So a message that is valid for the SMS platform, but not as tweet, will only incur the charge of 11 cents for a single SMS message.

// Line endings are excluded from byte count as well as character count.

//messages[0] answer should be "162 bytes long and 143 characters long"


let messages = ["néztek bele az „ártatlan lapocskába“, mint ahogy belenézetlen mondták ki rá a halálos itéletet a sajtó csupa 20–30 éves birái s egyben hóhérai.", "livres, et la Columbiad Rodman ne dépense que cent soixante livres de poudre pour envoyer à six milles son boulet d'une demi-tonne.  Ces", "Люди должны были тамъ и сямъ жить въ палаткахъ, да и мы не были помѣщены въ посольскомъ дворѣ, который также сгорѣлъ, а въ двухъ деревянныхъ", "Han hade icke träffat Märta sedan Arvidsons middag, och det hade gått nära en vecka sedan dess. Han hade dagligen promenerat på de gator, där"]

import Foundation

func stringToBytes(from s: String) -> Array<UInt8> {
  return Array(s.data(using: .utf8)!) 
}

func bytesToString(from b: Array<UInt8>) {
  if let result = String(data: Data(b), encoding: .utf8) {
    print(result) // Prints: Hello
  }
}

func byteCount(of b: String) -> Int {
  return stringToBytes(from: b).count
}

//SMS system uses a message limit of 160 bytes
func isSMSValid(_ sms: String) -> Bool {
  guard byteCount(of: sms) <= 160 else {
    return false
  }
  return true
}

//character limit of 140 characters
func isTweetValid(_ tweet: String) -> Bool {
  guard tweet.count <= 140 else {
    return false
  }
  return true
}

func isValid(_ s: String) -> Double {
  switch true {
    case isSMSValid(s) && isTweetValid(s):
      return 0.13
    case isSMSValid(s):
      return 0.11
    case isTweetValid(s):
      return 0.07
    default:
      return 0.0
  }
}

func totalMessagePrice(_ messages: Array<String>) -> Double {
  return messages.map { isValid($0) }.reduce(0) { $0 + $1 }
}

let d = totalMessagePrice(messages)
print(d)
