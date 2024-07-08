import UIKit

var greeting = "Hello, playground"

struct DatabaseUser{
    let name: String
    let isPremium:Bool
    let order : Int
}
var allUsers:[DatabaseUser] = [
    DatabaseUser(name: "NICk", isPremium: true, order: 4),
    DatabaseUser(name: "NIafsdCk", isPremium: false, order: 4),
    DatabaseUser(name: "afd", isPremium: true, order: 5),
    DatabaseUser(name: "aung", isPremium: false, order: 6)
    
]

//var allPremiumUsers:[DatabaseUser] = allUsers.filter{ user in
//    if user.isPremium{
//        return true
//    }else{
//        return false
//    }
//}

var allPremiumUsers:[DatabaseUser] = allUsers.filter{user in
    user.isPremium
}


var allPremiumUsers2:[DatabaseUser] = allUsers.filter({$0.isPremium})


//for users in allUsers{
//    if users.isPremium{
//        allPremiumUsers.append(users)
//    }
//}
print(allPremiumUsers)
