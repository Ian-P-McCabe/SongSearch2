//
//  Musician.swift
//  SongSearch2
//
//  Created by Ian McCabe on 3/26/22.
//

import Foundation
import SwiftUI

struct Musician {
    var firstName: String
    var lastName: String
    
    var instrument: String
    var role: String?
    var albums: [Album]
    
    var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    struct Album: Identifiable {
        var id: UUID
        var name: String
        var imageName: String
        
        var worksPlayed: [Work]
        
        var image: Image{
            Image(imageName)
        }
    }
}

extension Musician {
    
    static let hahnAlbums = [
        Album(id: UUID(), name: "Hilary Hahn Plays Bach", imageName: "hahnBach", worksPlayed: [Work.sampleData[6]] )
    ]
    
    static let gotoAlbums = [
        Album(id: UUID(), name: "Midori Goto Plays Bach", imageName: "gotoBach", worksPlayed: [Work.sampleData[6]] )
    ]
    
    static let grumiauxAlbums = [
        Album(id: UUID(), name: "Arthur Grumiaux Plays Bach", imageName: "grumiauxBach", worksPlayed: [Work.sampleData[6]] )
    ]
    
    static let perlmanAlbums = [
        Album(id: UUID(), name: "Itzhak Perlman Plays Bach", imageName: "perlmanBach", worksPlayed: [Work.sampleData[6]] )
    ]
    
    static let sampleData: [Musician] = [
        Musician(firstName: "Hilary", lastName: "Hahn", instrument: "Violin", albums: hahnAlbums , imageName: "hahn"),
        Musician(firstName: "Midori", lastName: "Goto", instrument: "Violin", albums: gotoAlbums, imageName: "goto"),
        Musician(firstName: "Arthur", lastName: "Grumiaux", instrument: "Violin", albums: grumiauxAlbums, imageName: "gumiaux"),
        Musician(firstName: "Itzhak", lastName: "Perlman", instrument: "Violin", albums: perlmanAlbums, imageName: "perlman")
    ]
}
