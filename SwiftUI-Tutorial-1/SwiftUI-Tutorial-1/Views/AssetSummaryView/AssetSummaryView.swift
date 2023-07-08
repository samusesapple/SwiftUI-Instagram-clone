//
//  AssetSummaryView.swift
//  SwiftUI-Tutorial-1
//
//  Created by Sam Sung on 2023/07/08.
//

import SwiftUI

struct AssetSummaryView: View {
    // View 전체 상태틀 변경시키는 데이터 - EnvironmentObject
    @EnvironmentObject var assetData: AssetSummaryData
    
    var assets: [Asset] {
        return assetData.assets
    }
    
    var body: some View {
        VStack(spacing: 20) {
            ForEach(assets) { asset in
                switch asset.type {
                case .creditCard:
                    AssetCardSectionView(asset: asset)
                        .frame(idealWidth: 250)
                default:
                    AssetSectionView(assetSection: asset)
                }
            }
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding()
        }
    }
}

struct AssetSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView{
            AssetSummaryView()
                .environmentObject(AssetSummaryData())
                .background(Color.gray.opacity(0.2))
        }
    }
}
