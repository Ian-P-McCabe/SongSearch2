//
//  WorkRow.swift
//  SongSearch2
//
//  Created by Ian McCabe on 3/24/22.
//

import SwiftUI

struct WorkRow: View {
    
    
    var work: Work
    
    //@State var showingWorks = false
    
    var body: some View {
        
        //NavigationView {
            VStack {
                HStack{
                    work.composer.image
                        .resizable()
                        .frame(width: 50, height: 50)
                        .cornerRadius(5)
                    VStack (alignment: .leading) {
                        Text(work.title)
                            .font(.title)
                        if let catalog = work.catalogSystems {
                            if let catNumber = work.catalogNumbers {
                                Text(catalog[0] + " " + String(catNumber[0]))
                            }
                        }
                    }
                    Spacer()
                }
                
                if work.pieces == nil {
                    if work.showingMovements {
                        if let movements = work.movements {
                            
                                ForEach(0..<movements[0].count, id: \.self) { i in
                                    
                                    NavigationLink {
                                        WorkChosen(viewModel: WorkChosenViewModel(work: self.work, movementNum: i))
                                    } label: { MovementRow(movement: movements[0][i], number:  i + 1)
                                            .foregroundColor(.black)
                                    }
                                }
                        }
                    }
                } else if let pieces = work.pieces {
                    if work.showingMovements {
                        ForEach(pieces, id: \.self) { p in
                            HStack {
                                let ind = 1 + (pieces.firstIndex(of: p) ?? 0)
                                Text(String(ind) + ". \(p)")
                                    .font(.title)
                                Spacer()
                            }
                        }
                    }
                }
            }
        //}
    }
}

struct WorkRow_Previews: PreviewProvider {
    static var previews: some View {
        WorkRow(work: Work.sampleData[0])
            //.previewLayout(.fixed(width: 400, height: 70))
//        WorkRow(work: Work.sampleData[2])
//            .previewLayout(.fixed(width: 400, height: 70))
    }
}
