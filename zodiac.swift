import Foundation 

typealias Fortune = String

enum Sign {
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
