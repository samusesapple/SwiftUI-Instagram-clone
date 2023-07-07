//
//  CustomNavigationView.swift
//  SwiftUI-Tutorial-1
//
//  Created by Sam Sung on 2023/07/07.
//

import SwiftUI

struct CustomNavigationView: ViewModifier {
    var title: String = ""
    
    func body(content: Content) -> some View {
        return content
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text(title)
                        .font(.system(size: 24, weight: .bold))
                        .padding()
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        print("NavigationButton Tapped")
                    } label: {
                        Image(systemName: "plus")
                        Text("자산 추가")
                            .font(.system(size: 12))
                    }
                    .tint(.black)
                    .padding(EdgeInsets(top: 8,
                                        leading: 8,
                                        bottom: 8,
                                        trailing: 8))
                    // cornerRadius처럼 테두리 둥글게 보이게 하기
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                        // 테두리 색 검정색으로
                            .stroke(Color.black)
                    }
                }
            }
            
            .navigationBarTitleDisplayMode(.inline)
            .onAppear {
                let appearance = UINavigationBarAppearance()
                appearance.configureWithTransparentBackground()
                appearance.backgroundColor = UIColor(white: 1, alpha: 0.5)

                UINavigationBar.appearance().standardAppearance = appearance
                UINavigationBar.appearance().compactAppearance = appearance
                UINavigationBar.appearance().scrollEdgeAppearance = appearance
            }
    }
    
}

extension View {
    func navigationBarWithButtonStyle(_ title: String) -> some View {
        
        return self.modifier(CustomNavigationView(title: title))
    }
}

struct CustomNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Color.gray.edgesIgnoringSafeArea(.all)
                .navigationBarWithButtonStyle("내 자산")
        }
    }
}
