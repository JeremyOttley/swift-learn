import Foundation
import FoundationNetworking

let apiKey: String = "7bf7209cab124e24975122905240207"

//https://api.weatherapi.com/v1/current.json?key=7bf7209cab124e24975122905240207&q=Baltimore&aqi=no



struct Response: Codable {
  struct Location: Codable {
    var name: String,
    var region: String, 
    var country: String,
    var lat: Double,
    var lon: Double,
    var tz_id: String,
    var localtime_epoch: Int,
    var localtime: DateTime
  },
  struct Current: Codable {
    var last_updated_epoch: Int,
    var last_updated: DateTime,
    var temp_c: Double,
    var temp_f: Double,
    var is_day: Int,
    var text: String,
    var icon: URL,
    var code: Int 
  },
  var wind_mph : Double,
  var wind_kph : Double,
  var wind_degree : Int,
  var wind_dir : String,
  var pressure_mb : Double,
  var pressure_in : Double,
  var precip_mm : Double,
  var precip_in : Double,
  var humidity : Double,
  var cloud : Double,
  var feelslike_c : Double,
  var feelslike_f : Double,
  var windchill_c : Double,
  var windchill_f : Double,
  var heatindex_c : Double,
  var heatindex_f : Double,
  var dewpoint_c : Double,
  var dewpoint_f : Double,
  var vis_km : Double,
  var vis_miles : Double,
  var uv : Double,
  var gust_mph : Double,
  var gust_kph : Double
}
