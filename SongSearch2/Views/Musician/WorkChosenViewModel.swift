//
//  WorkChosenViewModel.swift
//  SongSearch2
//
//  Created by Ian McCabe on 4/5/22.
//

import Foundation

final class WorkChosenViewModel: ObservableObject {
    
    @Published private var model: WorkChosenModel
    
    var work: Work {
        model.work 
    }
    
    var movement: Int {
        model.movement
    }
    var movementTitle: String{
        model.movementTitle
    }
    
    var musicians: [Musician] {
        model.musicians
    }
    
    var albums: [Musician.Album] {
        model.albums
    }
    
    init(work: Work, movementNum: Int) {
        print("Initializing the work chosen model")
        model = WorkChosenModel(chosenWork: work, movement: movementNum)
    }
}
