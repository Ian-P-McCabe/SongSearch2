//
//  SongSearch2App.swift
//  SongSearch2
//
//  Created by Ian McCabe on 3/22/22.
//

import SwiftUI

@main
struct SongSearch2App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ModelData())
        }
    }
}
