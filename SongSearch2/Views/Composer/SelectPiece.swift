//
//  MovementRow.swift
//  SongSearch2
//
//  Created by Ian McCabe on 3/25/22.
//

import SwiftUI

struct SelectPiece: View {
    
    var work: Work = Work.sampleData[6]
    
    var body: some View {
        Text("\(work.title)")
    }
}

struct MovementRow_Previews: PreviewProvider {
    static var previews: some View {
        SelectPiece()
    }
}
