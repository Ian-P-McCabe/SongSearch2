//
//  ModelData.swift
//  SongSearch2
//
//  Created by Ian McCabe on 3/24/22.
//

import Foundation

final class ModelData: ObservableObject {
    @Published var composers: [Composer] = Composer.sampleData
    
    @Published var works: [Work] = Work.sampleData
    
    var composer: Composer
    
    init(composer: Composer? = nil) {
        let aComposer = composer ?? Composer.sampleData.randomElement()!
        self.composer = aComposer
        
        
    }
    
    //var selectedComposer: Composer? 
}
