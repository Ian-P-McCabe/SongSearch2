//
//  StartSearch.swift
//  SongSearch2
//
//  Created by Ian McCabe on 3/24/22.
//

import SwiftUI

struct StartSearch: View {
    @EnvironmentObject var data: ModelData
    
    var composers: [Composer] {
        data.composers
    }
    
    func printStuff() {
        print("Hello there")
    }
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                ForEach(composers) { composer in
                    NavigationLink {
                        WorkSearch(viewModel: WorkSearchViewModel(composer: composer))
                    } label: {
                        ComposerRow(composer: composer)
                            .foregroundColor(.black)
                    }.simultaneousGesture(TapGesture().onEnded {
                        print("Hello There")
                    })
                }
            }
            .navigationTitle("Select Composer")
        }
    }
}

struct StartSearch_Previews: PreviewProvider {
    static var previews: some View {
        StartSearch()
            .environmentObject(ModelData())
    }
}
