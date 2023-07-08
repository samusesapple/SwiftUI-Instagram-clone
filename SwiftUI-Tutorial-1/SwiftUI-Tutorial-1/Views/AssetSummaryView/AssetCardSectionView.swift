//
//  AssetCardSectionView.swift
//  SwiftUI-Tutorial-1
//
//  Created by Sam Sung on 2023/07/08.
//

import SwiftUI

struct AssetCardSectionView: View {
    // 어떤 탭을 선택하냐에따라 View의 UI가 달라짐
    @State private var selectedTab = 1 // 디폴트값 1로 세팅
    // ObservableObject인 asset을 관찰함
    @ObservedObject var asset: Asset
    
    var assetData: [AssetData] {
        return asset.data
    }
    
    var body: some View {
        VStack {
            AssetSectionHeaderView(title: asset.type.title)
            TabMenuView(tabs: ["지난달 결제", "이번달 결제", "다음달 결제"],
                        selectedTab: $selectedTab,
                        updated: .constant(.nextMonth(amount: "130,000원")))
            TabView(selection: $selectedTab) {
                ForEach(0...2, id: \.self) { tabRow in
                    VStack {
                        ForEach(assetData) { data in
                            HStack {
                                Text(data.title)
                                    .font(.title3)
                                    .foregroundColor(.secondary)
                                Spacer()
                                Text(data.creditCardAmounts![tabRow].amount)
                                    .font(.title2)
                                    .foregroundColor(.primary)
                            }
                            Divider()
                        }
                    }
                    .tag(tabRow)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }
        .padding()
    }
}

struct AssetCardSectionView_Previews: PreviewProvider {
    static var previews: some View {
        let asset = AssetSummaryData().assets[5]
        AssetCardSectionView(asset: asset)
    }
}
