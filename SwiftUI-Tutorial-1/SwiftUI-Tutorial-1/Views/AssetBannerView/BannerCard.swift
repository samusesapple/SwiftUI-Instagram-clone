//
//  BannerCard.swift
//  SwiftUI-Tutorial-1
//
//  Created by Sam Sung on 2023/07/07.
//

import SwiftUI

struct BannerCard: View {
    var banner: AssetBanner
    
    var body: some View {
        Color(banner.backgroundColor)
            .overlay {
                VStack {
                    Text(banner.title)
                        .font(.title)
                    Text(banner.description)
                        .font(.subheadline)
                }
            }
    }
}

struct BannerCard_Previews: PreviewProvider {
    static var previews: some View {
        let mockBanner = AssetBanner(title: "테스트",
                                     description: "테스트 베너 입니다.",
                                     backgroundColor: .brown)
        BannerCard(banner: mockBanner)
    }
}
