//
//  DashboardScreen.swift
//  Otus1
//
//  Created by Павел Лунев on 29.11.2021.
//

import SwiftUI

struct DashboardScreen: View {

    @EnvironmentObject var dashboardViewModel: DashboardViewModel
    @EnvironmentObject var catalogViewModel: CatalogViewModel
    @Binding var activeTab: Int

    var body: some View {
        Button("Show second tab and item") {
            activeTab = 1
            catalogViewModel.currentRow = 1
        }
    }
}

struct DashboardScreen_Previews: PreviewProvider {
    static var previews: some View {
        DashboardScreen(activeTab: .constant(1))
            .environmentObject(DashboardViewModel())
            .environmentObject(CatalogViewModel())
    }
}
