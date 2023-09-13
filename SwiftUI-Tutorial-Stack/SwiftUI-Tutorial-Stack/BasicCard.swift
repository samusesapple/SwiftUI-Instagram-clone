//
//  BasicCard.swift
//  SwiftUI-Tutorial-Stack
//
//  Created by dev on 2023/09/12.
//

import SwiftUI

struct BasicCard: View {
    var icon: Image
    var title: String
    var timeString: String
    var color: Color
    
    var body: some View {
        HStack(spacing: 20) {
            icon
                .font(.system(size: 48))
                .foregroundColor(.white)
            
            VStack(alignment: .leading, spacing: 8) {
                Divider()
                    .opacity(0)
                
                Text(title)
                    .font(.system(size: 23,
                                  weight: .bold))
                    .foregroundColor(.white)
                
                Text(timeString)
                    .foregroundColor(.white)
            }
        }
        .padding(25)
        .background(color)
        .cornerRadius(20)
    }
}

struct BasicCard_Previews: PreviewProvider {
    static var previews: some View {
        BasicCard(icon: Image(systemName: "flame.fill"),
                  title: "출근 빡코딩",
                  timeString: "10 AM ~ 19 PM",
                  color: .purple)
    }
}
