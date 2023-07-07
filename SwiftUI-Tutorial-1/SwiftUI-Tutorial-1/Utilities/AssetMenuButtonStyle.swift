//
//  AssetMenuButtonStyle.swift
//  SwiftUI-Tutorial-1
//
//  Created by Sam Sung on 2023/07/07.
//

import SwiftUI

struct AssetMenuButtonStyle: ButtonStyle {
    let menu: AssetMenu
    
    func makeBody(configuration: Configuration) -> some View {
        return VStack {
            Image(systemName: menu.imageName)
                .resizable()
                .frame(width: 30, height: 30)
                .padding([.leading, .trailing], 10)
            
            Text(menu.title)
                .font(.system(size: 12, weight: .bold))
        }
        .padding()
        .foregroundColor(.blue)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

struct AssetMenuButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        HStack(spacing: 24) {
            Button("") {
                print("")
            }
            .buttonStyle(AssetMenuButtonStyle(menu: .bankAccount))
            Button("") {
                print("")
            }
            .buttonStyle(AssetMenuButtonStyle(menu: .cash))
        }
    }
}
