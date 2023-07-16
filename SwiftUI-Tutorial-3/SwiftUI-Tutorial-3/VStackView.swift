//
//  VStackView.swift
//  SwiftUI-Tutorial-3
//
//  Created by Sam Sung on 2023/07/16.
//

import SwiftUI

struct MyVStackViews: View {
    
    var isActivated: Bool
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 70, height: 70)
                .overlay(content: {
                    Text(isActivated ? "R" : "Y")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.yellow)
                })
                .padding(isActivated ? 30 : 10)
            Rectangle()
                .frame(width: 70, height: 70)
                .overlay(content: {
                    Text(isActivated ? "R" : "Y")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.yellow)
                })
                .padding(isActivated ? 30 : 0)
            Rectangle()
                .frame(width: 70, height: 70)
                .overlay(content: {
                    Text(isActivated ? "R" : "Y")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.yellow)
                })
                .padding(isActivated ? 30 : 10)
        }
        .background(isActivated ? .red : .yellow)
    }
}

struct MyVStackView_Previews: PreviewProvider {
    static var previews: some View {
        MyVStackViews(isActivated: false)
    }
}
