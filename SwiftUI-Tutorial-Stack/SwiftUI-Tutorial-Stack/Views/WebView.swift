//
//  WebView.swift
//  SwiftUI-Tutorial-Stack
//
//  Created by dev on 2023/09/13.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    var siteURLString: String
    
    func makeUIView(context: Context) -> some WKWebView {
        guard let url = URL(string: siteURLString) else {
            return WKWebView()
        }
        
        let urlRequest = URLRequest(url: url)
        let webView = WKWebView()
        webView.load(urlRequest)
        return webView
    }
    
    func updateUIView(_ uiView: UIViewType, context: UIViewRepresentableContext<WebView>) {
        print(#function)
    }
    
}
