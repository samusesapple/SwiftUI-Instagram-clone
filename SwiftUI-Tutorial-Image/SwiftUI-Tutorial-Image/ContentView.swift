//
//  ContentView.swift
//  SwiftUI-Tutorial-Image
//
//  Created by dev on 2023/09/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("beach")
                    .frame(height: 1)
                    .offset(y: -500)
                
                CircleImageView()
                
                HStack {
                    // 구글
                    LinkButton(urlString: "https://www.google.com",
                               buttonTitle: "구글",
                               buttonColor: .blue)
                    
                    // 네이버
                    LinkButton(urlString: "https://www.naver.com",
                               buttonTitle: "네이버",
                               buttonColor: .green)
                    
                    // 다음
                    LinkButton(urlString: "https://daum.net",
                               buttonTitle: "다음",
                               buttonColor: .yellow)
                }
                .padding(.vertical, 20)
                
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
