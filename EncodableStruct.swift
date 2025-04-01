struct Publisher: Codable {
    let publisherName: String
    let prefixName: String
    let publisherLocation: String
    let memberId: Int
    let memberType: String
    let annualFee: Int
    let dateJoined: Date
    let otherPrefixes: [String]
}
