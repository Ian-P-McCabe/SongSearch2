//
//  WorkSearchModel.swift
//  SongSearch2
//
//  Created by Ian McCabe on 3/24/22.
//

import Foundation

final class WorkSearchViewModel: ObservableObject {
//    var composer: Composer
//    var works: [Work]
//    var catalogSystems: [String]
    
    @Published private var model: WorkSearchModel
    
    var works: [Work] {
        model.shownWorks
    }
    
    var composer: Composer {
        model.composer
    }
    
    var selectedCatalog: String{
        model.selectedCatalog
    }
    
    var catalogSystems: [String] {
        model.catalogSystems
    }
    
    var selectedWork: Work? {
        if let work = model.selectedWork {
            return work
        }
        else {
            return nil 
        }
    }
    
    //@Published var selectedCatalog = ""
//    @Published var filteredWorks: [Work] {
//        switch selectedCatalog {
//        case "":
//            return works
//        default:
//            return works.filter { work in
//                if let tempCats = work.catalogSystems {
//                    tempCats.contains(selectedCatalog)
//                }
//            }
//        }
//    }
    
//    init(composer: Composer){
//        self.composer = composer
//
//        works = Work.sampleData.filter{ work in
//            work.composer == composer
//        }
//
//        catalogSystems = ["None"] + composer.catalogSystems
//    }
    
    init(composer: Composer) {
        model = WorkSearchModel(composer: composer)
        //works = model.shownWorks
    }
    
    func pickCatalog(catalog: String){
        model.filterByCatalog(catalogSystem: catalog)
    }
    
    func testPrint(workTitle: String) {
        print("The selected work is \(workTitle)")
    }
    
    func selectWork(wid: UUID) {
        model.selectWork(workID: wid)
    }
    func clearCatalog() {
        print("Clearing catalog")
        model.selectedCatalog = ""
        model.clearSearch()
    }
}
