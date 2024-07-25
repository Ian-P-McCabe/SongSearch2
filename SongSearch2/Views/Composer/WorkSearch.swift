//
//  WorkList.swift
//  SongSearch2
//
//  Created by Ian McCabe on 3/24/22.
//

import SwiftUI

struct WorkSearch: View {
    
    @ObservedObject var viewModel: WorkSearchViewModel
    @State var SCS = ""
    @State var catalogNumber = ""
    //@State var showingWorks = false
    
    init(viewModel: WorkSearchViewModel) {
        self.viewModel = viewModel
    }
    
    func experiment() {
        print("The value of the catalog var is now \(viewModel.selectedCatalog)")
    }
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Works by \(viewModel.composer.name)")
                .font(.title)
                .padding(.bottom, -5)
            GeometryReader { geometry in
                
                HStack (spacing: 0) {
                    Picker("Select Catalog System", selection: $SCS){
                        ForEach(viewModel.catalogSystems, id: \.self){
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                    .onChange(of: SCS) { newValue in
                        viewModel.pickCatalog(catalog: SCS)
                    }
                    
                    Spacer()
                    TextField("#", text: $catalogNumber)
                        .frame(width: geometry.size.width * 0.20)
                        .keyboardType(.asciiCapableNumberPad)
                        //.onSubmit(toggleNumber)
                    Button{
                        SCS = ""
                    } label: {
                        Image(systemName: "x.circle")
                            .foregroundColor(.red)
                            .padding(.trailing)
                    }
                }
            }.frame(height: 32)
            
            ScrollView {
                ForEach(viewModel.works) { work in
                    WorkRow(work: work)
                        .onTapGesture {
                            withAnimation(.easeInOut(duration: 1/4)){
                                viewModel.selectWork(wid: work.id)
                            }
                        }
                }
                
            }
           
        }
    }
}




struct WorkSearch_Previews: PreviewProvider {
    static var previews: some View {
        WorkSearch(viewModel: WorkSearchViewModel(composer: Composer.sampleData[0]))
    }
}
