//
//  MusicianRow.swift
//  SongSearch2
//
//  Created by Ian McCabe on 3/27/22.
//

import SwiftUI

struct MusicianRow: View {
    
    var musician: Musician
    
    var body: some View {
        HStack {
            musician.image
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(5)
            Text(musician.firstName + " " + musician.lastName)
                .font(.title)
                .lineLimit(1)
                .minimumScaleFactor(0.01)
            Spacer()
        }
    }
}

struct MusicianRow_Previews: PreviewProvider {
    static var previews: some View {
        MusicianRow(musician: Musician.sampleData[0])
    }
}
