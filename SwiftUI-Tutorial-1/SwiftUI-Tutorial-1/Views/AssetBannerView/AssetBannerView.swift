//
//  AssetBannerView.swift
//  SwiftUI-Tutorial-1
//
//  Created by Sam Sung on 2023/07/08.
//

import SwiftUI

struct AssetBannerView: View {
    let bannerList: [AssetBanner] = [
        AssetBanner(title: "첫번째 배너",
                    description: "새로운 공지사항을 확인하세요.",
                    backgroundColor: .red),
        AssetBanner(title: "두번째 깜짝 이벤트",
                    description: "사장님이 미쳤어요!",
                    backgroundColor: .green),
        AssetBanner(title: "세번째",
                    description: "세번째 배너",
                    backgroundColor: .blue),
        AssetBanner(title: "네번째",
                    description: "네번째 배너",
                    backgroundColor: .brown)
    ]
    
    @State private var currentPage = 0
    
    var body: some View {
        let bannerCards = bannerList.map({ BannerCard(banner: $0) })
        
        ZStack(alignment: .bottomTrailing) {
            PageViewController(page: bannerCards,
                               currentPage: $currentPage)
            PageControl(numberOfPages: bannerList.count,
                        currentPage: $currentPage)
            .frame(width: CGFloat(bannerCards.count * 18))
                .padding(.trailing)
        }
    }
}

struct AssetBannerView_Previews: PreviewProvider {
    static var previews: some View {
        AssetBannerView()
            .aspectRatio(5/2, contentMode: .fit)
    }
}
