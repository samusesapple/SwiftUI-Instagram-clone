//
//  User.swift
//  SwiftUI-Tutorial-LazyVGrid
//
//  Created by dev on 2023/10/12.
//

import Foundation

struct User: Identifiable, Hashable {
    var id: UUID = UUID()
    let userNumber: Int
    let name: String
}

extension User {
    static var getDummyData: [User] = {
        Array(1...100).map { User(userNumber: $0, name: "유저 \($0)") }
    }()
}
