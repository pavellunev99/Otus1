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
            AboutAppContentView(text: .constant("App Version\n\(aboutAppViewModel.appVersion)"))
            Button("Close") {
                presentationMode.wrappedValue.dismiss()
            }
        }
    }
}

struct AboutAppContentView: UIViewRepresentable {

    @Binding var text: String

    func makeUIView(context: Context) -> UILabel {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .preferredFont(forTextStyle: .largeTitle)
        label.textAlignment = .center
        return label
    }

    func updateUIView(_ uiView: UILabel, context: Context) {
        uiView.text = text
    }
}

struct AboutAppScreen_Previews: PreviewProvider {
    static var previews: some View {
        AboutAppScreen()
            .environmentObject(AboutAppViewModel())
    }
}
