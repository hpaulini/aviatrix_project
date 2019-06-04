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
    
    
    func refuel() {
        
    }
    
    func flyTo(destination : String) {
        location = destination
    }
    
    func distanceTo(location : String, target : String) -> Int {
        return data.knownDistances[location]![target]!
    }
    
    func knownDestinations() -> [String] {
       return ["St. Louis", "Phoenix", "Denver", "SLC"]
    }
}
