//
//  CatalogInfoScreen.swift
//  Otus1
//
//  Created by Павел Лунев on 01.12.2021.
//

import SwiftUI

struct CatalogInfoScreen: View {

    var item: CatalogItem

    var body: some View {
        VStack {
            if let image = item.image {
                Image(uiImage: image)
            }

            Text(item.title)
                .font(.largeTitle)
            Text(item.description)
                .font(.body)
        }
    }
}

struct CatalogInfoScreen_Previews: PreviewProvider {
    static var previews: some View {
        CatalogInfoScreen(item: .init(title: "Title", description: "Description", image: .init(systemName: "paperplane")))
    }
}
