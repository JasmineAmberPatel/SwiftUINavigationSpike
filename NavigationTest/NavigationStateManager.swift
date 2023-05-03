//
//  NavigationStateManager.swift
//  NavigationTest
//
//  Created by Jasmine Patel on 27/04/2023.
//

import Foundation

enum BasketNavigation: Hashable {
    case orderDetails
    case discount
    case email
    case terminal
}

class NavigationStateManager: ObservableObject {
    @Published var selectionPath = [BasketNavigation]()
    
    
    func popToRoot() {
        selectionPath = []
    }
    
    func goBack() {
        selectionPath.removeLast()
    }
}
