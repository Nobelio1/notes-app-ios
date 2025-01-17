//
//  ContentView.swift
//  Notes
//
//  Created by Gino Alejandro on 15/01/25.
//

import SwiftUI


struct ContentView: View {
    
    @StateObject var appInfo = AppInfo()
    
    var body: some View {
        TabView {
            NListView()
                .tabItem{
                    Label("Notes", systemImage: "note")
                }
            NListView(forFavorites: true)
                .tabItem{
                    Label("Favorites", systemImage: "heart")
                }
        }
            .environmentObject(appInfo)
    }
}

#Preview {
    ContentView()
}
