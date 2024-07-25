//
//  ContentView.swift
//  SongSearch2
//
//  Created by Ian McCabe on 3/22/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var modelData: ModelData
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            HomeView()
                .tabItem {
                    Label("Featured", systemImage: "house")
                }
                .tag(Tab.featured)
            
            StartSearch()
                .tabItem {
                    Label("List", systemImage: "magnifyingglass")
                }
                .tag(Tab.list)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
