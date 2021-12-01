//
//  ContentView.swift
//  Otus1
//
//  Created by Павел Лунев on 29.11.2021.
//

import SwiftUI

struct ContentView: View {

    @State private var selection: Int = 0

    var body: some View {

        TabView(selection: $selection) {
            DashboardScreen(activeTab: $selection)
                .tabItem {
                    Label("Dashboard", systemImage: "paperplane")
                }
                .tag(0)
            CatalogScreen()
                .tabItem {
                    Label("Catalog", systemImage: "folder")
                }
                .tag(1)
            ProfileScreen()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
