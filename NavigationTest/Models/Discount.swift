//
//  Discount.swift
//  NavigationTest
//
//  Created by Jasmine Patel on 27/04/2023.
//

import Foundation

struct Discount: Identifiable, Hashable {
    let id: String
    let name: String
    
    init(id: String, name: String) {
        self.id = id
        self.name = name
    }
    
    static func examples() -> [Discount] {
        [Discount(id: "1", name: "NHS discount 10%"),
        Discount(id: "2", name: "Student discount 10%")]
    }
}
