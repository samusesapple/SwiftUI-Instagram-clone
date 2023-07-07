//
//  AssetView.swift
//  SwiftUI-Tutorial-1
//
//  Created by Sam Sung on 2023/07/07.
//

import SwiftUI

struct AssetView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    VStack(spacing: 30) {
                        Spacer()
                        AssetMenuGridView()
                    }
                }
                .background(Color.gray.opacity(0.2))
            }
            .navigationBarWithButtonStyle("내 자산")
        }
    }
}

struct AssetView_Previews: PreviewProvider {
    static var previews: some View {
        AssetView()
    }
}
