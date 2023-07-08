//
//  AssetSectionView.swift
//  SwiftUI-Tutorial-1
//
//  Created by Sam Sung on 2023/07/08.
//

import SwiftUI

struct AssetSectionView: View {
    // ObservableObject의 관찰자
    @ObservedObject var assetSection: Asset
    
    var body: some View {
        VStack(spacing: 20) {
            AssetSectionHeaderView(title: assetSection.type.title)
            ForEach(assetSection.data) { asset in
                HStack {
                    Text(asset.title)
                        .font(.title2)
                        .foregroundColor(.secondary)
                    Spacer()
                    Text(asset.amount)
                        .font(.title2)
                        .foregroundColor(.primary)
                }
                Divider()
            }
        }
        .padding()
    }
}

struct AssetSectionView_Previews: PreviewProvider {
    static var previews: some View {
        let mockAsset = Asset(id: 0,
                              type: .bankAccount,
                              data: [
                                AssetData(id: 0,
                                          title: "신한은행",
                                          amount: "5,300,500원"),
                                AssetData(id: 1,
                                          title: "농협은행",
                                          amount: "5,300,510원"),
                                AssetData(id: 2,
                                          title: "수협은행",
                                          amount: "5,300,520원"),
                                AssetData(id: 3,
                                          title: "기업은행",
                                          amount: "5,300,530원")
                              ])
        AssetSectionView(assetSection: mockAsset)
    }
}
