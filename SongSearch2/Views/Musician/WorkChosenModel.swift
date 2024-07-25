//
//  WorkChosenModel.swift
//  SongSearch2
//
//  Created by Ian McCabe on 4/5/22.
//

import Foundation
import SwiftUI

struct WorkChosenModel {
    var work: Work
    var movement: Int
    
    var musicians: [Musician]
    
    var albums: [Musician.Album]
    
    var movementTitle: String
    
    init(chosenWork: Work, movement: Int) {
        self.work = chosenWork
        self.movement = movement
        
        var m: [Musician] = []
        var al: [Musician.Album] = []
        //print("initializing the pure model")
        for musician in Musician.sampleData {
            for album in musician.albums {
                //this approach did not work because the workshowing value was changed
//                if album.worksPlayed.contains(chosenWork) {
//                    //print("Initializing the lists")
//                    m.append(musician)
//                    al.append(album)
//                }
                for workp in album.worksPlayed {
                    if workp.id == chosenWork.id {
                        m.append(musician)
                        al.append(album)
                    }
                }
            }
        }
        musicians = m
        albums = al
        
//        print("printing the albums and musicians below")
//        print(musicians)
//        print(albums)
        //movementTitle = chosenWork.movements?[0][movement]
        
        if let tempMove = chosenWork.movements {
            movementTitle = tempMove[0][movement]
        }
        else {
            movementTitle = ""
        }
        //print(chosenWork.id)
    }
    
}
