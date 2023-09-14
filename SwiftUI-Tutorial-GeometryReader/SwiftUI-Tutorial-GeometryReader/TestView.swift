//
//  TestView.swift
//  SwiftUI-Tutorial-GeometryReader
//
//  Created by dev on 2023/09/14.
//

import SwiftUI

struct TestView: View {
    
    let title: String
    let backgroundColor: Color
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.top)
            
            Text(title)
                .font(.system(.title))
                .fontWeight(.black)
                .foregroundColor(.white)
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView(title: "테스트",
                 backgroundColor: .red)
    }
}
