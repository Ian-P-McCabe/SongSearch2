//
//  WorkSearchModel.swift
//  SongSearch2
//
//  Created by Ian McCabe on 3/25/22.
//

import Foundation

struct WorkSearchModel {
    private var works: [Work]
    var composer: Composer
    var catalogSystems: [String]
    private(set) var shownWorks: [Work]
    var selectedCatalog: String
    
    var selectedWork: Work?

    mutating func filterByCatalog(catalogSystem: String) {
        print("Filtering by \(catalogSystem)")
        
        if catalogSystem == "" {
            shownWorks = works
            return
        }
        
        shownWorks = works.filter { work in
            if let tempCats = work.catalogSystems {
                return tempCats.contains(catalogSystem)
            }
            else {
                return false
            }
        }
    }
    
    mutating func clearSearch(){
        shownWorks = works
    }
    
    mutating func selectWork(workID: UUID) {
//        if let workIndex = works.firstIndex(where: {$0.id == workID}) {
//            works[workIndex].showingMovements = true
//            selectedWork = works[workIndex]
//        }
        if let workIndex = shownWorks.firstIndex(where: {$0.id == workID}) {
            shownWorks[workIndex].showingMovements.toggle()
            print(shownWorks[workIndex].id)
            selectedWork = shownWorks[workIndex]
        }
    }
    
    
    init(composer: Composer) {
        self.composer = composer
        
        works = Work.sampleData.filter{ work in
            work.composer == composer
        }
        
        shownWorks = works
        
        catalogSystems = ["None"] + composer.catalogSystems
        
        selectedCatalog = ""
        
    }
}
