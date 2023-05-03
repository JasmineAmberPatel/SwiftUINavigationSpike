//
//  ModelDataManager.swift
//  NavigationTest
//
//  Created by Jasmine Patel on 27/04/2023.
//

import Foundation

class ModelDataManager: ObservableObject {
    @Published var baskets = Basket.examples()
    @Published var discounts = Discount.examples()
    @Published var terminals = Terminal.examples()
}
