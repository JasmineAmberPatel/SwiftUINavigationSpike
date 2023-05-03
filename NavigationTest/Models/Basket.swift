//
//  Basket.swift
//  NavigationTest
//
//  Created by Jasmine Patel on 27/04/2023.
//

import Foundation

struct Basket: Identifiable, Hashable {
    var id: String
    let version: Int
    let customerEmail: String?
    let channelId: Int
    let price: Double
    
    init(id: String, version: Int, customerEmail: String?, channelId: Int, price: Double) {
        self.id = id
        self.version = version
        self.customerEmail = customerEmail
        self.channelId = channelId
        self.price = price
    }
    
    static func examples() -> [Basket] {
        [Basket(id: "1234", version: 1, customerEmail: "jasmine@footasylum.com", channelId: 11, price: 10.99),
        Basket(id: "2345", version: 2, customerEmail: "jas@footasylum.com", channelId: 12, price: 50.99),
        Basket(id: "3456", version: 3, customerEmail: "mine@footasylum.com", channelId: 11, price: 87.97)]
    }
}
