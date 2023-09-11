//
//  ContentView.swift
//  SwiftUI-Tutorial-4
//
//  Created by dev on 2023/09/08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                HStack {
                    // 네이버 웹뷰
                    NavigationLink {
                        WebView(siteURLString: "https://www.naver.com")
                            .edgesIgnoringSafeArea(.all)
                    } label: {
                        Text("네이버")
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.white)
                            .font(.system(.largeTitle))
                            .fontWeight(.bold)
                            .cornerRadius(18)
                    }
                    // 다음 웹뷰
                    NavigationLink {
                        WebView(siteURLString: "https://www.daum.net")
                            .edgesIgnoringSafeArea(.all)
                    } label: {
                        Text("다음")
                            .padding()
                            .background(Color.yellow)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .cornerRadius(18)
                    }
                    
                    // 구글 웹뷰
                    NavigationLink {
                        WebView(siteURLString: "https://www.google.com")
                            .ignoresSafeArea(.all)
                    } label: {
                        Text("구글")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .cornerRadius(18)
                    }
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
