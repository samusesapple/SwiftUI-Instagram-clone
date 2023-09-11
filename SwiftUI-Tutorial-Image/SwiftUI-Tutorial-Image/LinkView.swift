//
//  LinkView.swift
//  SwiftUI-Tutorial-Image
//
//  Created by dev on 2023/09/11.
//

import SwiftUI
import WebKit

struct LinkView: UIViewRepresentable {
    
    typealias UIViewType = WKWebView
    
    let urlString: String
    
    func makeUIView(context: Context) -> UIViewType {
        guard let url = URL(string: urlString) else {
            return WKWebView()
        }
        
        let urlRequest = URLRequest(url: url)
        let webView = WKWebView()
        webView.load(urlRequest)
        
        return webView
    }
    
    func updateUIView(_ uiView: UIViewType, context: UIViewRepresentableContext<LinkView>) {
        print(#function)
    }
}

