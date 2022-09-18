//
//  ContentView.swift
//  autospotify
//
//  Created by Ji Hun Wang on 2022/09/18.
//

import SwiftUI

enum Tabs: String {
    case archive
    case home
    case settings
}

struct ContentView: View {
    
    @State var selectedTabTitle: Tabs = .home
    
    var body: some View {
        NavigationView {
            TabView(selection: $selectedTabTitle) {
                Text("Favourites Screen")
                    .tabItem {
                        Image(systemName: "archivebox")
                        Text("Archive")
                            .font(.system(size: 50))
                    }
                    .tag(Tabs.archive)
                
                    
                HomeView()
                    .tabItem {
                        Image(systemName: "waveform.circle.fill")
                        Text("Main")
                    }
                    .tag(Tabs.home)
                
                Text("Nearby Screen")
                    .tabItem {
                        Image(systemName: "gearshape.fill")
                        Text("Settings")
                    }
                    .tag(Tabs.settings)
            }.navigationTitle(selectedTabTitle.rawValue.capitalized)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
