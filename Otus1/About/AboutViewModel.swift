//
//  AboutViewModel.swift
//  Otus1
//
//  Created by Павел Лунев on 01.12.2021.
//

import Foundation

final class AboutAppViewModel: ObservableObject {

    @Published var appVersion: String = (Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String) ?? ""
}
