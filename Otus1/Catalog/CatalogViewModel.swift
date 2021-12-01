//
//  CatalogViewModel.swift
//  Otus1
//
//  Created by Павел Лунев on 01.12.2021.
//

import Foundation
import UIKit

struct CatalogItem: Identifiable {
    var id: Int {
        title.hashValue
    }
    let title: String
    let description: String
    let image: UIImage?
}

final class CatalogViewModel: ObservableObject {
    @Published var items: [CatalogItem] = [.init(title: "Pencil", description: "Pencil short description", image: .init(systemName: "pencil")),
                                           .init(title: "Paperplane", description: "Paperplane short description", image: .init(systemName: "paperplane")),
                                           .init(title: "Trash", description: "Trash short description", image: .init(systemName: "trash")),
                                           .init(title: "Folder", description: "Folder short description", image: .init(systemName: "folder")),
                                           .init(title: "External drive", description: "External drive short description", image: .init(systemName: "externaldrive"))]

    var currentRow: Int = 0 {
        didSet {
            self.selection = currentRow
        }
    }

    @Published var selection: Int? = nil
}
