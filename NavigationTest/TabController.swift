//
//  TabController.swift
//  NavigationTest
//
//  Created by Jasmine Patel on 25/04/2023.
//

import Foundation

enum Tab {
    case scan
    case basket
    case returns
}

class TabController: ObservableObject {
    @Published var activeTab = Tab.basket

    func open(_ tab: Tab) {
        activeTab = tab
    }
}
