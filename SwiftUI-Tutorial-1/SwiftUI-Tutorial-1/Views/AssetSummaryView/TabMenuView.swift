//
//  TapMenuView.swift
//  SwiftUI-Tutorial-1
//
//  Created by Sam Sung on 2023/07/08.
//

import SwiftUI

struct TabMenuView: View {
    var tabs: [String]
    @Binding var selectedTab: Int
    @Binding var updated: CreditCardAmount?
    
    var body: some View {
        HStack {
            ForEach(0..<tabs.count, id: \.self) { row in
                Button {
                    // 몇번째 탭이 선택되었는지 값을 바인딩
                    selectedTab = row
                    // 업데이트 확인 여부 - true로 변경
                    UserDefaults.standard.set(true, forKey: "creditCard_updated_checked: \(row)")
                } label: {
                    VStack(spacing: 0) {
                        HStack {
                            if updated?.id == row {
                                let checked = UserDefaults.standard.bool(forKey: "creditCard_updated_checked: \(row)")
                                Circle()
                                    .fill(
                                        !checked ? Color.red : Color.clear
                                    )
                                    .frame(width: 6, height: 6)
                                    .offset(x: 2, y: -8)
                            } else {
                                Circle()
                                    .fill(Color.clear)
                                    .frame(width: 6, height: 6)
                                    .offset(x: 2, y: -8)
                            }
                            Text(tabs[row])
                                .font(.system(.headline))
                                .foregroundColor(
                                    selectedTab == row ? .accentColor : .gray
                                )
                                .offset(x: -4, y: 0)
                        }
                        .frame(height: 52)
                        Rectangle().fill(
                            selectedTab == row ? Color.secondary : Color.clear
                        )
                        .frame(height: 2)
                        .offset(x: 2, y: -8)
                    }
                }
            }
            .buttonStyle(PlainButtonStyle())
        }
        .frame(height: 55)
    }
}

struct TapMenuView_Previews: PreviewProvider {
    static var previews: some View {
        TabMenuView(tabs: ["지난달 결제", "이번달 결제", "다음달 결제"],
                    selectedTab: .constant(1),
                    updated: .constant(.currentMonth(amount: "13,000원")))
    }
}
