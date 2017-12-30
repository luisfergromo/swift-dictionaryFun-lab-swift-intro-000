//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    fileprivate func thisFunc(_ myFlavor: String, _ flavor: String, _ namesOf: inout [String], _ name: String) {
        if (myFlavor == flavor){
            namesOf.append(name)
        }
    }

    fileprivate func thisIsAFor(_ flavor: String, _ namesOf: inout [String]) {
        for (name,myFlavor) in favoriteFlavorsOfIceCream{
            thisFunc(myFlavor, flavor, &namesOf, name)
        }
    }
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream: [String:String] = [
        "Joe": "Peanut Butter and Chocolate",
        "Tim": "Natural Vanilla",
        "Sophie": "Mexican Chocolate",
        "Deniz": "Natural Vanilla",
        "Tom": "Mexican Chocolate",
        "Jim": "Natural Vanilla,",
        "Susan": "Cookies 'N' Cream"
]
    // 2.
    func names(forFlavor flavor: String) -> [String] { //returns a dict of names who likes that flavor
        var namesOf:[String] = []
        thisIsAFor(flavor, &namesOf)
        return namesOf
    }

    
    // 3.
//    func count(forFlavor flavor: String) -> Int {
//        var namesOf:[String] = []
//        thisIsAFor(flavor, &namesOf)
//        return namesOf.count
//    }

    func count(forFlavor flavor:String)->Int{
        var namesOf:[String] = []
        for (name,myFlavor) in favoriteFlavorsOfIceCream{
            if myFlavor == name {
                namesOf.append(name)
            }
        }
        return namesOf.count
    }

    // 4.
    func flavor(forPerson person: String) -> String? {
//        var name: [String] = []
        if let flavor = favoriteFlavorsOfIceCream[person]{
            return flavor
        }else{
            return nil
        }
    }
    
    // 5.
    func replace(flavor:String,forPerson:String)->Bool{
        if favoriteFlavorsOfIceCream[flavor] == "Natural Vanilla"{
            return true
        }else{
            return false
        }
    }

    // 6.
    func remove(person:String)-> Bool {
        if person == favoriteFlavorsOfIceCream[person] && favoriteFlavorsOfIceCream[person] != nil {
        favoriteFlavorsOfIceCream[person] = nil
            return true
        }
        return true
    }

    
    // 7.
    func numberOfAttendees()->Int{
        return favoriteFlavorsOfIceCream.count
    }

    
    // 8.
    
    func add(person:String,withFlavor:String)-> Bool {
        if person != favoriteFlavorsOfIceCream[person]{
            favoriteFlavorsOfIceCream[person]?.append(person)
            return true
        }else{
            return false
        }
    }
    
    // 9.
    func attendeeList()->String{
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        var attendee:String = ""
        for name in allNames {
            attendee += "\(name) likes \(favoriteFlavorsOfIceCream[name] ?? "Ice Cream")"

        if name != allNames[allNames.count - 1] {
                attendee += "\n"
            }
        }
        return attendee
    }
    
    
    
    
    
    
    

}
