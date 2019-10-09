// REDUCE //


// Reduce numbers
let heights: [Double] = [5.9, 5.11, 5.10, 6.1, 6.0, 5.1, 5.5]
//
//let averageHeight = heights.reduce(0) { (result, height) -> Double in
//    return result + height
//    } / Double(heights.count)
//
//print(averageHeight)

let averageHeight = heights.reduce(0) { $0 + $1 } / Double(heights.count)
print(averageHeight)


let gitHubContributions: [Int] = [2, 12, 3, 19, 0, 0, 3, 10, 4, 6, 0, 1, 7, 11]

let totalContributions = gitHubContributions.reduce(0) { $0 + $1 }
print(totalContributions)


// Reduce strings
let contributions: [Int] = [2, 12, 3, 19, 0, 0, 3, 10, 4, 6, 0, 1, 7, 11]

let contributionString = contributions.reduce("") { $0 + "\($1)" }
print(contributionString) // good case for phone numbers



let contactInfo: [String] = ["Name: Mitchell Budge", "Age: 25", "Birthday: September 29th", "Email: mitchellbudge@gmail.com"]

let mitchInfo = contactInfo.reduce("") { $0 + "\n" + $1 }
print(mitchInfo)



// Challenge: use reduce to convert the following array into a postal address string that you could print out and mail a letter to.
var nemosLocation: [Any] = ["P. Sherman", 42, "Wallaby Way", "Sydney, Australia", 2000]

nemosLocation.remove(at: 2)
nemosLocation[1] = "42 Wallaby Ways"

var nemosAddress = nemosLocation.reduce("") { $0 + "\n" + "\($1)"}
print(nemosAddress)
