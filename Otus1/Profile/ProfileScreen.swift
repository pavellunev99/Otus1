//
//  ProfileView.swift
//  Otus1
//
//  Created by Павел Лунев on 29.11.2021.
//

import SwiftUI

struct ProfileScreen: View {

    @EnvironmentObject var profileViewModel: ProfileViewModel

    @State private var showingAbout = false

    var body: some View {
        Button("About app") {
            showingAbout.toggle()
        }
        .sheet(isPresented: $showingAbout) {
            AboutAppScreen()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
