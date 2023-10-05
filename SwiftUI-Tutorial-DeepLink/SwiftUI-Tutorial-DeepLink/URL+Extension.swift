//
//  URL+Extension.swift
//  SwiftUI-Tutorial-DeepLink
//
//  Created by dev on 2023/10/05.
//

import Foundation

extension URL {
    
    /// scheme 일치 여부 return
    var isDeepLink: Bool {
        return scheme == "swiftui-tutorial-deeplink"
    }
    
    /// host에 입력된 값에 따라 어떤 탭이 선택되었는지TabIdentifier 타입을 return
    var tabIdentifier: TabIdentifier? {
        guard isDeepLink else {
            return nil
        } // 딥링크에 값 들어왔는지 여부 체크
        
        switch host {
        case "todo":
            return .todo
        case "profile":
            return .profile
        default:
            return nil
        }
    }
    
    /// swiftui-tutorial-deeplink://todo/uuid  << 들어오는 uuid을 PageIdentifier타입에 담아서 return
    var todoDetailPage: PageIdentifier? {
        guard let tabIdentifier = tabIdentifier,
              pathComponents.count > 1,
              let uuid = UUID(uuidString: pathComponents[1])
        else {
            return nil
        }
        
        switch tabIdentifier {
        case .todo:
            return .todoItem(id: uuid)
        default:
            return nil
        }
    }
}
