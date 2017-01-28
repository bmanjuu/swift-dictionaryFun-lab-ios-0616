//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream = [
        "Joe" : "Peanut Butter and Chocolate",
        "Tim" : "Natural Vanilla",
        "Sophie" : "Mexican Chocolate",
        "Deniz" : "Natural Vanilla",
        "Tom" : "Mexican Chocolate",
        "Jim" : "Natural Vanilla",
        "Susan" : "Cookies 'N' Cream"
    ]
    
    
    // 2.
    func names(forFlavor flavor: String) -> [String] {
        
        var names = [String]()
        
        for (name, iceCreamflavor) in favoriteFlavorsOfIceCream {
            
            if iceCreamflavor == flavor {
                names.append(name)
            }
        }
        return names
    }
    
    
    
    
    // 3.
    func count(forFlavor flavor: String) -> Int {
        
        var count = 0
        
        for iceCreamflavor in favoriteFlavorsOfIceCream.values {
            
            if iceCreamflavor == flavor {
                count+=1
            }

        }
        return count
    }
    
    
    
    
    
    
    // 4.
    func flavor(forPerson person: String) -> String? {
        
        if favoriteFlavorsOfIceCream[person] != nil {
            return favoriteFlavorsOfIceCream[person]
        }
        
        return nil
    }
    
    
    
    
    
    
    // 5.
    func replace(flavor: String, forPerson person: String) -> Bool {
        
        if favoriteFlavorsOfIceCream[person] != nil {
            favoriteFlavorsOfIceCream[person] = flavor
            return true
        }
        
        return false
    }
    
    
    
    
    
    
    // 6.
    func remove(person: String) -> Bool {
        
        if favoriteFlavorsOfIceCream[person] != nil {
            favoriteFlavorsOfIceCream[person] = nil
            return true
        }
        
        return false
    }
    
    
    
    
    
    
    
    // 7.
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.count
    }
    
    
    
    
    
    
    
    // 8.
    func add(person: String, withFlavor flavor: String) -> Bool {
        
        if favoriteFlavorsOfIceCream[person] == nil {
            favoriteFlavorsOfIceCream[person] = flavor
        }
        
        return false
    }
    
    
    
    
    
    
    
    
    // 9.
    func attendeeList() {
        
        for (index, name) in favoriteFlavorsOfIceCream.keys.sorted().enumerated() {
            
            let personsFavoriteFlavor = "\(name) likes \(favoriteFlavorsOfIceCream[name]!)"
            
            if index == favoriteFlavorsOfIceCream.keys.count-1 {
                print(personsFavoriteFlavor, terminator: "")
            } else {
                print(personsFavoriteFlavor)
            }
            
        }
        
        
    }
    
    
    
    
    
    
    

}
