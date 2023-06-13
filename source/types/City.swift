//Copyright © 2023 Charles Kerr and Mark Dillon. All rights reserved.

import Foundation

/// All cities that are available
enum City: String, CaseIterable {
    
    case albany = "Albany"
    case atlanta = "Atlanta"
    case baltimore = "Baltimore"
    case billings = "Billings"
    case birmingham = "Birmingham"
    case boston = "Boston"
    case buffalo = "Buffalo"
    case butte = "Butte"
    case casper = "Casper"
    case charleston = "Charleston"
    case charlotte = "Charlotte"
    case chattanooga = "Chattanooga"
    case chicago = "Chicago"
    case cinncinnati = "Cinncinnati"
    case cleveland = "Cleveland"
    case columbus = "Columbus"
    case dallas = "Dallas"
    case denver = "Denver"
    case desMoines = "Des Moines"
    case detriot = "Detroit"
    case elPaso = "El Paso"
    case fargo = "Fargo"
    case fortWorth = "Fort Worth"
    case houston = "Houston"
    case indianapolis = "Indianapolis"
    case jacksonville = "Jacksonville"
    case kansasCity = "Kansas City"
    case knoxville = "Knoxville"
    case lasVegas = "Las Vegas"
    case littleRock = "Little Rock"
    case losAngeles = "Los Angeles"
    case louisville = "Louisville"
    case memphis = "Memphis"
    case miami = "Miami"
    case milwaukee = "Milwaukee"
    case minneapolis = "Minneapolis"
    case mobile = "Mobile"
    case nashville = "Nashville"
    case newOrleans = "New Orleans"
    case newYork = "New York"
    case norfolk = "Norfolk"
    case oakland = "Oakland"
    case oklahomaCity = "Oklahoma City"
    case omaha = "Omaha"
    case philadelphia = "Philadelphia"
    case phoenix = "Phoenix"
    case pittsburgh = "Pittsburgh"
    case pocatello = "Pocatello"
    case portlandME = "Portland, ME."
    case portlandOre = "Portland, Ore."
    case pueblo = "Pueblo"
    case rapidCity = "Rapid City"
    case reno = "Reno"
    case richmond = "Richmond"
    case sacramento = "Sacramento"
    case saltLakeCity = "Salt Lake City"
    case sanAntonio = "San Antonio"
    case sanDiego = "San Diego"
    case sanFrancisco = "San Francisco"
    case seattle = "Seattle"
    case shreveport = "Shreveport"
    case spokane = "Spokane"
    case stLouis = "St. Louis"
    case stPaul = "St. Paul"
    case tampa = "Tampa"
    case tucumcari = "Tucumcari"
    case washington = "Washington"
}

extension City: CustomStringConvertible {
    var description: String {
        return self.rawValue
    }
}


