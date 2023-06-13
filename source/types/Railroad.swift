//Copyright © 2023 Charles Kerr. All rights reserved.

import Foundation

enum Railroad: String, CaseIterable {
    case acl = "Atlantic Coast Line"
    case atsf = "Atchison, Topeka, & Santa Fe"
    case bm = "Boston & Maine"
    case bo = "Baltimore & Ohio"
    case cbq = "Chicago, Burlington & Quincy"
    case cmstpp = "Chicago, Milwaukee, St. Paul & Pacific"
    case cnw = "Chicago & NorthWestern"
    case co = "Chesapeake & Ohio"
    case crip = "Chicago, Rock Island & Pacific"
    case drgw = "Denver & Rio Grande Western"
    case gmo = "Gulf, Mobile & Ohio"
    case gn = "Great Northern"
    case ic = "Illinois Central"
    case ln = "Louisville & Nashville"
    case mp = "Missouri Pacific"
    case np = "Northern Pacific"
    case nw = "Norfolk & Western"
    case nyc = "New York Central"
    case nynhh = "New York, New Haven & Hartford"
    case pa = "Pennsylvania"
    case rfp = "Richmond, Fredricksberg & Potomac"
    case sal = "Seaboard Air Line"
    case slsf = "St. Louis - San Francisco"
    case sou = "Southern"
    case sp = "Southern Pacific"
    case tp = "Texas & Pacific"
    case up = "Union Pacific"
    case wp = "Western Pacific"
}

extension Railroad: CustomStringConvertible {
    var description: String {
        return self.rawValue
    }
}


enum TrainEnhancement: String , CaseIterable {
    case express = "Express"
    case superChief = "Super Chief"
}

extension TrainEnhancement: CustomStringConvertible {
    var description: String {
        return self.rawValue
    }
}

