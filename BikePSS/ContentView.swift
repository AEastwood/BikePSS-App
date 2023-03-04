//
//  ContentView.swift
//  BikePSS
//
//  Created by Adam Eastwood on 04/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Controls()
                .tabItem() {
                    Image(systemName: "key")
                    Text("Controls")
                }
            Map()
                .tabItem() {
                    Image(systemName: "map")
                    Text("Map")
                }
            Settings()
                .tabItem() {
                    Image(systemName: "gear")
                    Text("Settings")
                }
            Help()
                .tabItem() {
                    Image(systemName: "questionmark")
                    Text("Help")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
