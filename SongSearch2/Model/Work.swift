//
//  Work.swift
//  SongSearch2
//
//  Created by Ian McCabe on 3/22/22.
//

import Foundation

//All of these things could be separate, explore in next generation?
//Well tempered clavier is a collection of individual works... add a collection parameter
//that has a range of catalog numbers
struct Work: Identifiable, Equatable {
    
    var id: UUID
    var composer: Composer
    var title: String
    
    var catalogSystems: [String]?
    var catalogNumbers: [Int]?
    
    var pieces: [String]?
    var movements: [[String]]?
    var key: String?
    
    var showingMovements = false
    
//    struct Piece: Identifiable {
//        var id: UUID
//        var title: String
//        var number: Int?
//        var movements: [Movement]
//    }
//
//    struct Movement: Identifiable {
//        var id: UUID
//        var title: String
//        var number: Int?
//        var recordings: [Recording]?
//    }
    
    struct Recording: Identifiable {
        var id: UUID
        var player: String
        var audioFileName: String
        var audioFileFormat: String
    }
    
}

extension Work {
    static let sibelius = Composer.sampleData[0]
    static let holst = Composer.sampleData[1]
    static let ysaye = Composer.sampleData[2]
    static let mozart = Composer.sampleData[3]
    static let bach = Composer.sampleData[4]
    static let chopin = Composer.sampleData[5]
    
    static let sampleData: [Work] = [
        Work(id: UUID(), composer: sibelius, title: "Florestan", catalogSystems: ["JS"], catalogNumbers: [82], movements: [["Moderato", "Molto moderato", "Andante", "Tempo I"]]),
        Work(id: UUID(), composer: sibelius, title: "10 Pieces for Piano", catalogSystems: ["Opus"], catalogNumbers: [24], movements: [["Improptu", "Romance", "Caprice", "Valse", "Romance", "Idyll", "Andantino", "Nocturne", "Romance", "Barcarola"]]),
        Work(id: UUID(), composer: sibelius, title: "Five Short Pieces", movements: [["No. 1 in F-Sharp Minor", "No.2 in E Major", "No.3 in F Minor", "No.4 in E-Flat Major", "No.5 in C Major"]]), 
        
        Work(id: UUID(), composer: holst, title: "The Planets", catalogSystems: ["Opus"], catalogNumbers: [32], movements: [["Mars, the Bringer of War", "Venus, the Bringer of Peace", "Mercury, the Winged Messenger", "Jupiter, the Bringer of Jollity", "Saturn, the Bringer of Old Age", "Uranus, the Magician", "Neptune, the Mystic"]]),
        
        Work(id: UUID(), composer: ysaye, title: "6 Sonatas", catalogSystems: ["Opus"], catalogNumbers: [27], pieces: ["Sonata in G Minor", "Sonata in A Minor", "Sonata in D Minor", "Sonata in E Minor", "Sonata in G Major", "Sonata in E Major"],
            movements: [["Grave", "Fugato", "Allegro poco scherzo", "Finale: con brio"], ["Obsession: prelude", "Malincolia", "Danse les ombres: Sarabande"], ["Ballade"],["Allemanda", "Sarabanda", "Finale"], ["L'Aurore", "Danse Rustique"]]),
        
        Work(id: UUID(), composer: mozart, title: "Violin Concerto No.4", catalogSystems: ["K"], catalogNumbers: [218], movements:[["Allegro", "Andante cantabile", "Rondeau: Andante grazioso"]]),
        
        Work(id: UUID(), composer: bach, title: "Sonata No.1", catalogSystems: ["BWV"], catalogNumbers: [1001], movements: [["Adagio", "Fuga", "Siciliana", "Presto"]]),
        
        Work(id: UUID(), composer: chopin, title: "Ballade No.1", catalogSystems: ["Opus", "B"], catalogNumbers: [23, 66], key: "G Minor"),
        Work(id: UUID(), composer: chopin, title: "Ballade No.4", catalogSystems: ["Opus", "B"], catalogNumbers: [52, 146], key: "F Minor")
        
    ]
}


