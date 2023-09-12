//
//  BasicCard.swift
//  SwiftUI-Tutorial-Stack
//
//  Created by dev on 2023/09/12.
//

import SwiftUI

struct BasicCard: View {
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "flame.fill")
                .font(.system(size: 48))
                .foregroundColor(.white)
            
            VStack(alignment: .leading, spacing: 8) {
                Divider()
                    .opacity(0)
                
                Text("출근 빡코딩")
                    .font(.system(size: 23,
                                  weight: .bold))
                    .foregroundColor(.white)
                
                Text("10 AM ~ 19 PM")
                    .foregroundColor(.white)
            }
        }
        .padding(25)
        .background(.purple)
        .cornerRadius(20)
    }
}

struct BasicCard_Previews: PreviewProvider {
    static var previews: some View {
        BasicCard()
    }
}
