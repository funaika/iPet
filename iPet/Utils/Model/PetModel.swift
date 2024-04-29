//
//  PetModel.swift
//  iPet
//
//  Created by Kalen on 4/12/24.
//

import Foundation

struct Pet: Codable {
    var name: String
    var birthday = Date()
    var lastMeal: Date
    var lastDrink: Date
    
    var age: Int {
        let timeSince = calcTimeSince(date: birthday)
        return timeSince
    }
    var happinessLevel: String {
        hunger == "Hungry" || thirst == "Thirsty" ? "Unhappy" : "Happy"
    }
    var hunger: String {
        let timeSince = calcTimeSince(date: lastMeal)
        var string = "Hungry"
        
        switch timeSince {
        case 0..<30: string = "Satisfied"
        case 30..<60: string = "Getting hungry..."
        case 60...: string = "Hungry"
        default: string = "Idk"
            
        }
        return string
    }
    var thirst: String {
        let timeSince = calcTimeSince(date: lastDrink)
        var string = "Thirsty"
        
        switch timeSince {
        case 0..<30: string = "Satisfied"
        case 30..<60: string = "Getting thirsty..."
        case 60...: string = "Thirsty"
        default: string = "Idk"
        }
        
        return string
    }
}
