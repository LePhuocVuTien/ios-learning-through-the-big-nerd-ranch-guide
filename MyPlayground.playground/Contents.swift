import UIKit

var str = "Hello, playground"

str = "Hello, swift"

let constStr = str

var reading1 : Float?
var reading2 : Float?
var reading3 : Float?

reading1 = 9.8
reading2 = 9.2
reading3 = 9.7

//let avgReading = (reading1! + reading2! + reading3!) / 3
if let reading1 = reading1,
    let reading2 = reading2,
    let reading3 = reading3
{
    let avgReading = (reading1 + reading2 + reading3) / 3
}
else {
    let errString = "Instrument reported a reading that was nil."
}

let nameByParkingSpace = [13: "Alice", 27: "Bob", 28: "Code"]
let space13Assignee: String? = nameByParkingSpace[13]
let space27Assignee: String? = nameByParkingSpace[27]

if let space13Assignee = nameByParkingSpace[13] {
    print("Key 13 is assigned in the dictionary!")
}
let array: [String] = [
    "1",
    "12",
    "ABC"]
let range = 0..<array.count
for i in range {
    let str = array[i]
    //Use String
}
for (space, name) in nameByParkingSpace {
    let permit = "Space \(space): \(name)"
}
enum PieType : Int {
    case apple = 0
    case cherry
    case pecan
}

let favoritePice = PieType.apple
let name: String
switch favoritePice {
case .apple:
    name = "Apple"
case .cherry:
    name = "Cherry"
case .pecan:
    name = "Pecan"
}

let macOSVersion: Int = 0
switch macOSVersion {
case 0...8:
    print("A big cat")
    break
case 9:
    print("Mavericks")
    break
case 10:
    print("Yosemite")
    break
case 11:
    print("El Capitan")
    break
default:
    print("Greeting")
}
let pieRawValue1 = PieType.pecan.rawValue
if let pieType = PieType(rawValue: pieRawValue1) {
    // Got a valid 'pieType'
}
