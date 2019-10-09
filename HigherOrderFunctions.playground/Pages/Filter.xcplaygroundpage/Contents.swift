// FILTER //


// Filter numbers
let scores: [Double] = [100.5, 95.5, 93.0, 90.5, 89.0, 80.0, 73.0, 65.5, 0.5]

//let passingScores = scores.filter { (score) -> Bool in
//    return score >= 80
//}
//print(passingScores)

let passingScores = scores.filter { $0 >= 80 }
print(passingScores)




// Filter strings
let responses: [String] = ["Yes", "no", "yes", "no", "No", "YES", "yes", "yes", "NO"]

// filter is not CHANGING the values, just checking them
let yesCount = responses.filter { $0.lowercased() == "yes" }
let noCount = responses.filter { $0.lowercased() == "no" }
print(yesCount.count, noCount.count)




// Challenge: use filter to divvy up the following array into two separate team lead group arrays. Each group should have an equal number of students. Jonah will take the first alphabetical half and Hayden will take the other.
let students: [String] = ["CC", "Marc", "Alex S", "Josh", "Jordan", "William", "Brian", "Alex R", "Jake", "Nate"]

let jonahsGroup = students.filter { $0.lexicographicallyPrecedes("Jordan")}
let haydensGroup = students.filter { !$0.lexicographicallyPrecedes("Jordan")}
print(jonahsGroup)
print(haydensGroup)
