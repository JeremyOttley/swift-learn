import Foundation

//https://i18n-puzzles.com/puzzle/2/

// In the input list, you find the local times when detectors recorded something, and the time zone of that detector station. 
//Go through the list, and find an instance where four signals were recorded at the same time (at least within the same minute).

//I need the timezone

//parse the time + offset

//find which timestamps happened within the same minute

let timeStamps = ["2019-06-05T08:15:00-04:00", "2019-06-05T14:15:00+02:00", "2019-06-05T17:45:00+05:30", "2019-06-05T05:15:00-07:00", "2011-02-01T09:15:00-03:00", "2011-02-01T09:15:00-05:00"]

let x = timeStamps[0]
let y: String? = "Jeremy"

// Define the date formatter
let dateFormatter = DateFormatter()
dateFormatter.locale = Locale(identifier: "en_US_POSIX") // Prevent locale-specific issues
dateFormatter.timeZone = TimeZone(secondsFromGMT: 0) // Set initial timezone to GMT
dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"

print(dateFormatter.timeZone)
