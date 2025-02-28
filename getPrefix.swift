import Foundation
import FoundationXML

class PublisherParser: XMLParserDelegate {
    var publisherName: String?
    var currentElement = ""
    var foundCharacters = ""

    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        currentElement = elementName
        foundCharacters = ""
    }

    func parser(_ parser: XMLParser, foundCharacters string: String) {
        if !string.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            foundCharacters += string
        }
    }

    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        if elementName == "publisher_name" {
            publisherName = foundCharacters.trimmingCharacters(in: .whitespacesAndNewlines)
        }
    }
}

// Usage
func parsePublisherXML(xmlContent: String) -> String? {
    guard let data = xmlContent.data(using: .utf8) else {
        return nil
    }
    
    let parser = XMLParser(data: data)
    let delegate = PublisherParser()
    
    parser.delegate = delegate
    
    if parser.parse() {
        return delegate.publisherName
    } else {
        print("Error parsing XML:", parser.parserError?.localizedDescription ?? "")
        return nil
    }
}

// Example usage
let xmlString = """
<XML>
<xml>
<publisher>
<publisher_name>University of Illinois Press</publisher_name>
<prefix_name>University of Illinois Press</prefix_name>
<publisher_location>Champaign, IL, United States</publisher_location>
<member_id>3673</member_id>
<member_type>Member Publisher</member_type>
<annual_fee>550</annual_fee>
<date_joined>2011-04-07</date_joined>
<other_prefixes>
<prefix>10.5622</prefix>
<prefix>10.5406</prefix>
</other_prefixes>
</publisher>
</xml>
</XML>
"""

if let publisherName = parsePublisherXML(xmlContent: xmlString) {
    print("Publisher Name:", publisherName)
}
