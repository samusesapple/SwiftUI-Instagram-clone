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
        }
    }
}

struct QRCodeGuideLineView_Previews: PreviewProvider {
    static var previews: some View {
        QRCodeGuideLineView()
    }
}
