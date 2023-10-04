//
//  UIScreen+Extension.swift
//  SwiftUI-Tutorial-ToastPopUp
//
//  Created by dev on 2023/10/04.
//

import SwiftUI

extension UIScreen {
    static var topSafeArea: CGFloat {
        let keyWindow = UIApplication.shared.connectedScenes
            .filter({$0.activationState == .foregroundActive})
            .map({$0 as? UIWindowScene})
            .compactMap({$0})
            .first?.windows
            .filter({$0.isKeyWindow}).first
        
        return (keyWindow?.safeAreaInsets.top) ?? 0
    }
}
