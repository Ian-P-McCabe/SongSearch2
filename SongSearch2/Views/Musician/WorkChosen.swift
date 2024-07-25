//
//  WorkChosen.swift
//  SongSearch2
//
//  Created by Ian McCabe on 4/5/22.
//

import SwiftUI

struct WorkChosen: View {
    
    @ObservedObject var viewModel: WorkChosenViewModel
    
    init(viewModel: WorkChosenViewModel){
        self.viewModel = viewModel
    }
    
    func getTheId() {
        print(viewModel.work.id)
    }
    
    var body: some View {
        
        VStack {
            Text(viewModel.movementTitle + " is found in:")
                .font(.title)
                .onTapGesture {
                    getTheId()
                }
            ScrollView {
                ForEach(viewModel.albums) {album in
                    AlbumRow(album: album)
                }
            }
        }
    }
}

struct WorkChosen_Previews: PreviewProvider {
    static var previews: some View {
        WorkChosen(viewModel: WorkChosenViewModel(work: Work.sampleData[6], movementNum: 2))
    }
}
