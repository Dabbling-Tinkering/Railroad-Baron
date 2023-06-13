//Copyright © 2023 Charles Kerr. All rights reserved.

import Foundation

/// Avaliable regions for the game
enum Region: String, CaseIterable {
    
    case northCentral = "NorthCentral"
    case northEast = "NorthEast"
    case northWest = "NorthWest"
    case plains = "Plains"
    case southCentral = "SouthCentral"
    case southEast = "SouthEast"
    case southWest = "SouthWest"
    
}



extension Region: CustomStringConvertible {
    /// The name of the actual region
    var description: String {
        return self.rawValue
    }
}

