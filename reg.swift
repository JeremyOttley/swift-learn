let user = "{name: Shane, id: 123, employee_id: 456}"
let regex = /name: \w+/

if let match = user.firstMatch(of: regex) {
    print(match.output)
}
