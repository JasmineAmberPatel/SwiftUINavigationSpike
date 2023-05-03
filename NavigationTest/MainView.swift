//
//  MainView.swift
//  NavigationTest
//
//  Created by Jasmine Patel on 25/04/2023.
//

import SwiftUI

struct MainView: View {
    @StateObject private var tabController = TabController()
    
    var body: some View {
        TabView(selection: $tabController.activeTab) {
            ScanView()
                .tabItem {
                    Label("Scan", systemImage: "barcode.viewfinder")
                }
                .tag(Tab.scan)
            LiveBasketView()
                .tabItem {
                    Label("Basket", systemImage: "basket")
                }
                .tag(Tab.basket)
            ReturnsView()
                .tabItem {
                    Label("Returns", systemImage: "shippingbox.and.arrow.backward")
                }
                .tag(Tab.returns)
        }
        .environmentObject(tabController)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
