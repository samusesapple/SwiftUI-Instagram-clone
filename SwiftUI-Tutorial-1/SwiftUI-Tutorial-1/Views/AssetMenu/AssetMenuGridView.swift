//
//  AssetMenuGridView.swift
//  SwiftUI-Tutorial-1
//
//  Created by Sam Sung on 2023/07/07.
//

import SwiftUI

struct AssetMenuGridView: View {
    let menuList: [[AssetMenu]] = [
        [.creditScore, .bankAccount, .creditCard, .insurance],
        [.cash, .investment, .loan, .realEstate]
    ]
    
    var body: some View {
        // 1. 수직으로 뿌림 (행)
        VStack(spacing: 20) {
            ForEach(menuList, id: \.self) { row in
                // 2. 수평으로 뿌림 (열)
                HStack(spacing: 10) {
                    ForEach(row) { menu in
                        Button("") {
                            print(menu.rawValue)
                        }
                        .buttonStyle(AssetMenuButtonStyle(menu: menu))
                    }
                }
            }
        }
    }
}

struct AssetMenuGridView_Previews: PreviewProvider {
    static var previews: some View {
        AssetMenuGridView()
    }
}
