//
//  QRCodeGuideLineView.swift
//  SwiftUI-Tutorial-QRCodeScanner
//
//  Created by dev on 2023/09/14.
//

import SwiftUI

struct QRCodeGuideLineView: View {
    var body: some View {
        GeometryReader { proxy in
            RoundedRectangle(cornerRadius: 20)
                .size(width: proxy.size.width / 2,
                      height: proxy.size.width / 2)
                .stroke(style: StrokeStyle(lineWidth: 10, dash: [7]))
                .foregroundColor(.green.opacity(0.8))
                .offset(x: proxy.size.width/4, y: proxy.size.height/3)
        }
        .background(.clear)
    }
}

struct QRCodeGuideLineView_Previews: PreviewProvider {
    static var previews: some View {
        QRCodeGuideLineView()
    }
}
