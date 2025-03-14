//https://i18n-puzzles.com/puzzle/1/

// Write a program that checks whether messages are valid as SMS and / or valid as (old-style) Tweet3. 

//Your input is a list of messages in different languages, one on each line, in UTF-8 format. 

//The message broker expects UTF-8 format as well. Calculate your total bill with the message broker, assuming that you will not send any messages that are too long. 

//So a message that is valid for the SMS platform, but not as tweet, will only incur the charge of 11 cents for a single SMS message.

// Line endings are excluded from byte count as well as character count.

//messages[0] answer should be "162 bytes long and 143 characters long"


let messages = ["néztek bele az „ártatlan lapocskába", "mint ahogy belenézetlen mondták ki rá a halálos itéletet a sajtó csupa 20–30 éves birái s egyben hóhérai.", "livres, et la Columbiad Rodman ne dépense que cent soixante livres de poudre pour envoyer à six milles son boulet d'une demi-tonne.  Ces", "Люди должны были тамъ и сямъ жить въ палаткахъ, да и мы не были помѣщены въ посольскомъ дворѣ, который также сгорѣлъ, а въ двухъ деревянныхъ", "Han hade icke träffat Märta sedan Arvidsons middag, och det hade gått nära en vecka sedan dess. Han hade dagligen promenerat på de gator, där"]

import Foundation

func stringToBytes(from s: String) -> Array<UInt8> {
  return Array(s.data(using: .utf8)!) 
}

func bytesToString(from b: Array<UInt8>) {
  if let result = String(data: Data(b), encoding: .utf8) {
    print(result) // Prints: Hello
  }
}

let x = stringToBytes(from: messages[0])
let messageByteLength = x.count


print("Your message is \(messages[0].count) characters long")
print("Your message is \(messageByteLength) bytes in length")
