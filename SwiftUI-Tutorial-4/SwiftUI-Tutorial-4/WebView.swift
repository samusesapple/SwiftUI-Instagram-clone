//
//  WebView.swift
//  SwiftUI-Tutorial-4
//
//  Created by dev on 2023/09/08.
//

import SwiftUI
import WebKit

// UIViewRepresentable : UIKit의 UIView를 사용할 수 있도록 함 / e.g) UIViewController 쓰고 싶으면 UIViewControllerRepresentable 쓰면 됨
struct WebView: UIViewRepresentable {
    
    var siteURLString: String
    
    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: siteURLString) else {
            return WKWebView()
        }
        
        let urlRequest = URLRequest(url: url)
        let webView = WKWebView()
        webView.load(urlRequest)
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebView>) {
        print("웹뷰 업데이트 완료")
    }
}

