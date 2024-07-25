//
//  ComposerImage.swift
//  SongSearch2
//
//  Created by Ian McCabe on 3/24/22.
//

import SwiftUI

struct ComposerRow: View {
    
    var composer: Composer
    
    var body: some View {
        HStack {
            composer.image
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(5)
            Text(composer.name)
                .font(.title)
                .lineLimit(1)
                .minimumScaleFactor(0.01)
            Spacer()
        }
    }
}

struct ComposerRow_Previews: PreviewProvider {
    static var previews: some View {
        ComposerRow(composer: Composer.sampleData[0])
            .previewLayout(.fixed(width: 400, height: 70))
    }
}
