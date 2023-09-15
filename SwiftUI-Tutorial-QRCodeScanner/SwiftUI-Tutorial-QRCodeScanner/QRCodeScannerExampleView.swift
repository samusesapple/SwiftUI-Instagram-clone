//
//  CodeScannerView.swift
//  SwiftUI-Tutorial-QRCodeScanner
//
//  Created by dev on 2023/09/14.
//

import SwiftUI
import CodeScanner

struct QRCodeScannerExampleView: View {
    @State private var isPresentingScanner = false
    @State private var scannedCode: String?

    var body: some View {
        ZStack() {
            // 바탕이 되는 웹뷰 (default: google / 스캔 된 경우: 스캔된 사이트)
            if let scannedCode = scannedCode {
                WebView(urlString: scannedCode)
            } else {
                WebView(urlString: "https://www.google.com")
            }

            // QR코드 스캔 시작 버튼
            Button {
                isPresentingScanner = true
            } label: {
                Text("QR코드 스캔하기")
                    .font(.headline)
                    .fontWeight(.black)
                    .padding()
                    .foregroundColor(.white)
                    .background(.green)
                    .cornerRadius(20)
                    .shadow(radius: 4, x: 1, y: 7)
            }
            .sheet(isPresented: $isPresentingScanner) {
                ZStack {
                    CodeScannerView(codeTypes: [.qr]) { response in
                        if case let .success(result) = response {
                            scannedCode = result.string
                            isPresentingScanner = false
                        }
                    }
                    
                    QRCodeGuideLineView()
                }
            }
        }
    }
}

struct QRCodeScannerExampleView_Previews: PreviewProvider {
    static var previews: some View {
        QRCodeScannerExampleView()
    }
}
