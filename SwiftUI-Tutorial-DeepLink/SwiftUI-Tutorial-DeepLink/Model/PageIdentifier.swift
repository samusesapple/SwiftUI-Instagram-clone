//
//  PageIdentifier.swift
//  SwiftUI-Tutorial-DeepLink
//
//  Created by dev on 2023/10/05.
//

import Foundation

// 보여줘야하는 페이지 케이스
enum PageIdentifier: Hashable {
    case todoItem(id: UUID)
}
