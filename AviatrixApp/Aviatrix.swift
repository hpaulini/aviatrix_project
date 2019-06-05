//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    
    var author : String
    var location : String
    var data = AviatrixData()
    var distanceTraveled = 0
    var maxFuel = 5000
    var fuelLevel = 5000.0
    var milesPerGallon = 0.4
    var galsNeededtoRefuel = 0.0
    var fuelCost = 0.0
  
    init(authorName : String, loc : String) {
        author = authorName
        location = loc
    }
    
    var running = false
    
    func loc() -> String {
        return location
    }
    
    func start() -> Bool {
        running = true
        return running
    }
    
    
    func refuel(location : String) {
        galsNeededtoRefuel = amtFueled()
        fuelCost = fuelCost + (amtFueled())*(data.fuelPrices[location]!)
        fuelLevel = 5000.0
    }
    
    func amtFueled() -> Double{
        return 5000.0-fuelLevel
    }
    
    func flyTo(destination : String) {
        distanceTraveled = distanceTraveled+data.knownDistances[location]![destination]!
        fuelLevel = fuelLevel - (Double(data.knownDistances[location]![destination]!))/milesPerGallon
        location = destination
    }
    
//    func fuelCost(location : String) -> Double {
//
//        fuelCost = fuelCost + (amtFueled())*(data.fuelPrices[location]!)
//        return fuelCost
//    }
    
    func distanceTo(location : String, target : String) -> Int {
        return data.knownDistances[location]![target]!
    }
    
    func knownDestinations() -> [String] {
       return ["St. Louis", "Phoenix", "Denver", "SLC"]
    }
    
    func fuelPrices(location : String) -> Double {
        return data.fuelPrices[location]!
    }
}
