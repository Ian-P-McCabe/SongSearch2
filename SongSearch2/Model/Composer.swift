//
//  Composer.swift
//  SongSearch2
//
//  Created by Ian McCabe on 3/22/22.
//

import Foundation
import SwiftUI

struct Composer: Identifiable, Equatable {
    var id: UUID
    var name: String
    var catalogSystems: [String]
    
    var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var timePeriods: [Era]? 
}

extension Composer {
    static let sampleData: [Composer] =  [
        Composer(id: UUID(), name: "Jean Sibelius", catalogSystems: ["Opus", "JS"], imageName: "sibelius"),
        Composer(id: UUID(), name: "Gustav Holst", catalogSystems: ["Opus", "H"], imageName: "holst"),
        Composer(id: UUID(), name: "Eugene Ysaÿe", catalogSystems: ["Opus"], imageName: "ysaye"),
        Composer(id: UUID(), name: "Wolfgang Amadeus Mozart", catalogSystems: ["K"], imageName: "mozart"),
        Composer(id: UUID(), name: "Johan Sebastian Bach", catalogSystems: ["BWV", "NBE", "BD", "BC"], imageName: "bach"),
        Composer(id: UUID(), name: "Frédéric Chopin", catalogSystems: ["Opus", "B", "KK"], imageName: "chopin")
    ]
}
