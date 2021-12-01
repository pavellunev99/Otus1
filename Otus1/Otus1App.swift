//
//  Otus1App.swift
//  Otus1
//
//  Created by Павел Лунев on 29.11.2021.
//

import SwiftUI

@main
struct Otus1App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(DashboardViewModel())
                .environmentObject(CatalogViewModel())
                .environmentObject(ProfileViewModel())
                .environmentObject(AboutAppViewModel())
        }
    }
}
