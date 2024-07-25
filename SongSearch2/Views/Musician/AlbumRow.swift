//
//  AlbumRow.swift
//  SongSearch2
//
//  Created by Ian McCabe on 4/5/22.
//

import SwiftUI

struct AlbumRow: View {
    
    var album: Musician.Album
    
    var body: some View {
        HStack {
            album.image
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(5)
            Text(album.name)
                .font(.title)
                .lineLimit(1)
                .minimumScaleFactor(0.01)
            Spacer()
        }
    }
}

struct AlbumRow_Previews: PreviewProvider {
    static var previews: some View {
        AlbumRow(album: Musician.sampleData[0].albums[0])
    }
}
