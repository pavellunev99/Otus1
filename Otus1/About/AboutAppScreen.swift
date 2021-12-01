//
//  AboutAppScreen.swift
//  Otus1
//
//  Created by Павел Лунев on 29.11.2021.
//

import SwiftUI

struct AboutAppScreen: View {

    @EnvironmentObject var aboutAppViewModel: AboutAppViewModel
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            Text("App Version\n\(aboutAppViewModel.appVersion)")
                .multilineTextAlignment(.center)
            Button("Close") {
                presentationMode.wrappedValue.dismiss()
            }
        }
    }
}

struct AboutAppScreen_Previews: PreviewProvider {
    static var previews: some View {
        AboutAppScreen()
    }
}
