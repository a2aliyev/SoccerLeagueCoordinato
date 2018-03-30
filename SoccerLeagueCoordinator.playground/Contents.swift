let players : [[String: String]] = [
    ["name": "Joe Smith","height" : "42", "soccer experience": "YES", "guardian name": "Jim and Jan Smith"],
    ["name": "Jill Tanner","height" : "36", "soccer experience": "YES", "guardian name": "Clara Tanner"],
    ["name": "Bill Bon", "height": "43", "soccer experience": "YES", "guardian name": "Sara and Jenny Bon"],
    ["name": "Eva Gordon", "height": "45", "soccer experience": "NO", "guardian name": "Wendy and Mike Gordon"],
    ["name": "Matt Gill", "height": "40", "soccer experience": "NO", "guardian name": "Charles and Sylvia Gill"],
    ["name": "Kimmy Stein", "height": "41", "soccer experience": "NO", "guardian name": "Bill and Hillary Stein"],
    ["name": "Sammy Adams", "height": "45", "soccer experience": "NO", "guardian name": "Jeff Adams"],
    ["name": "Karl Saygan", "height": "42", "soccer experience": "YES", "guardian name": "Heather Biedsoe"],
    ["name": "Suzane Greenberg", "height": "44", "soccer experience": "YES", "guardian name": "Henrietta Dumas"],
    ["name": "Sal Dali", "height": "41", "soccer experience": "NO", "guardian name": "Gala Dali"],
    ["name": "Joe Kavaller", "height": "39", "soccer experience": "NO", "guardian name": "Sam and Elaine Kavaller"],
    ["name": "Ben Finkelstein", "height": "44", "soccer experience": "NO", "guardian name": "Aaron and Jill Finkelstein"],
    ["name": "Diego Soto", "height": "41", "soccer experience": "YES", "guardian name": "Robin and Sarika Soto"],
    ["name": "Chloe Alaska", "height": "47", "soccer experience": "NO", "guardian name": "David and Jamie Alaska"],
    ["name": "Arnold Wills", "height": "43", "soccer experience": "NO", "guardian name": "Claire Wills"],
    ["name": "Phillip Helm", "height": "44", "soccer experience": "YES", "guardian name": "Thomas Helm and Eva Jones"],
    ["name": "Les Clay", "height": "42", "soccer experience": "YES", "guardian name": "Wynonna Brown"],
    ["name": "Herschel Krustofski", "height": "45", "soccer experience": "YES", "guardian name": "Hyman and Rachel Krustofski"]
]

var teamSharks: [[String : String]] = []
var teamDragons : [[String : String]] = []
var teamRaptors : [[String : String]] = []

let timeSharks : String = "March 17, 3pm"
let timeDragons : String = "March 17, 1pm"
let timeRaptors : String = "March 18, 1pm"

var experienced: String = "ts"
var unexperienced: String = "ts"
for player in players {
    if(player["soccer experience"] == "YES"){
        switch(experienced){
        case "ts":
            teamSharks.append(player)
            experienced = "td"
        case "td":
            teamDragons.append(player)
            experienced = "tr"
        case "tr":
            teamRaptors.append(player)
            experienced = "ts"
        default:
            print("def")
        }
    }
    else{
        switch(unexperienced){
            case "ts":
                teamSharks.append(player)
                unexperienced = "td"
            case "td":
                teamDragons.append(player)
                unexperienced = "tr"
            case "tr":
                teamRaptors.append(player)
                unexperienced = "ts"
            default:
                print("def")
            }
        }
}

print (teamDragons)
var letters: [String] = []

func createLetter(_ playerName: String, _ guardianName: String, _ teamName: String, _ dateTime: String) -> String{
    let letter = "\(guardianName) \n  \(playerName)    \(teamName)     \(dateTime)"
    return letter
 
}



func generateLetterTeams(_ listOfPlayers: [[String: String]], _ teamName: String, _ teamTime: String){
    for player in listOfPlayers{
        let letter = createLetter(player["name"]!, player["guardian name"]!, teamName, teamTime)
        
        letters.append(letter)
        print(letter)
    }
}

generateLetterTeams(teamRaptors, "Raptors", timeRaptors)
generateLetterTeams(teamDragons, "Dragons", timeDragons)
generateLetterTeams(teamSharks, "Sharks", timeSharks)
