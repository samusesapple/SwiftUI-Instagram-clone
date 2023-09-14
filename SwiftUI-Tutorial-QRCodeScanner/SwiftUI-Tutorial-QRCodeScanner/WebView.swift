//
//  WebView.swift
//  SwiftUI-Tutorial-QRCodeScanner
//
//  Created by dev on 2023/09/14.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    let urlString: String
    
    // MARK: - Methods
    
    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: urlString) else {
            return WKWebView()
        }
        
        let request = URLRequest(url: url)
        let webView = WKWebView()
        webView.load(request)
        
        return webView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        print(#function)
    }
}

