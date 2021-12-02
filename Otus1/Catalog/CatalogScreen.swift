//
//  CatalogScreen.swift
//  Otus1
//
//  Created by Павел Лунев on 29.11.2021.
//

import SwiftUI

struct CatalogScreen: View {

    @EnvironmentObject var catalogViewModel: CatalogViewModel

    var body: some View {
        NavigationView {
            CatalogListView()
                .environmentObject(catalogViewModel)
        }
    }
}

struct CatalogListView: View {

    @EnvironmentObject var catalogViewModel: CatalogViewModel

    var body: some View {
        List(catalogViewModel.items.indices) { index in

            let item = catalogViewModel.items[index]

            NavigationLink(destination: CatalogInfoScreen(item: item),
                           tag: index,
                           selection: $catalogViewModel.selection) {
                Text(item.title)
            }
        }
        .navigationBarTitle(Text("Symbols catalog"))
    }
}

struct CatalogScreen_Previews: PreviewProvider {
    static var previews: some View {
        CatalogScreen()
            .environmentObject(CatalogViewModel())
    }
}
