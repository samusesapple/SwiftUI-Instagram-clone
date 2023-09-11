//
//  CircleImageView.swift
//  SwiftUI-Tutorial-Image
//
//  Created by dev on 2023/09/11.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
        Image("beach")
            .resizable()
            .scaledToFill()
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            .shadow(radius: 10, x: 1, y: 10)
            .overlay(Circle().foregroundColor(.black.opacity(0.3)))
            .overlay(content: {
                Circle()
                    .stroke(Color.blue,
                            lineWidth: 10)
            })
            .overlay {
                Circle().stroke(Color.red,
                                lineWidth: 10)
                    .padding()
            }
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
