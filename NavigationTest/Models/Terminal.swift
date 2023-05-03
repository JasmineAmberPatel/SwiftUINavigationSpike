//
//  Terminal.swift
//  NavigationTest
//
//  Created by Jasmine Patel on 28/04/2023.
//

import Foundation

struct Terminal: Identifiable, Hashable {
    let id: Int
    let name: String
    
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
    
    static func examples() -> [Terminal] {
        [Terminal(id: 1, name: "Terminal 1"),
        Terminal(id: 2, name: "Terminal 2"),
        Terminal(id: 3, name: "Terminal 3")]
    }
}
