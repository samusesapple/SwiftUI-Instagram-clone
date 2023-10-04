//
//  Friend.swift
//  SwiftUI-Tutorial-PickerView
//
//  Created by dev on 2023/10/04.
//

import SwiftUI

struct Friend: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var school: School
}
