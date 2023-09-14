//
//  TabView.swift
//  SwiftUI-Tutorial-GeometryReader
//
//  Created by dev on 2023/09/13.
//

import SwiftUI

enum Menu {
    case home, cart, profile
}

struct TabRootView: View {
    
    @State var selectedTab: Menu = .home
    
    var tabBarPosition: (Menu, GeometryProxy) -> CGPoint = {
        var divider: Double = 0
        
        switch $0 {
        case .home:
            divider = 6
        case .cart:
            divider = 2
        case .profile:
            divider = 1.2
        }
        
        return CGPoint(x: $1.frame(in: .local).minX + $1.size.width / divider,
                       y: $1.frame(in: .local).maxY - 26)
    }
    
    var body: some View {
        
        GeometryReader { proxy in
            
            // 배경이 되는 view
            ZStack(alignment: .bottom) {
                switch selectedTab {
                case .home:
                    TestView(title: "홈",
                             backgroundColor: .red)
                case .cart:
                    TestView(title: "장바구니",
                             backgroundColor: .green)
                case .profile:
                    TestView(title: "프로필",
                             backgroundColor: .blue)
                }
                
                // 탭바 선택에 따른 동그라미 애니메이션
                Circle()
                    .fill(.white)
                    .frame(width: 100, height: 100)
                    .position(tabBarPosition(selectedTab, proxy))
                
                // 커스텀 탭바
                HStack(spacing: 0) {
                    Button {
                        withAnimation {
                            self.selectedTab = .home
                        }
                    } label: {
                        Image(systemName: "house.fill")
                            .font(.system(size: selectedTab == .home ? 36 : 23))
                            .foregroundColor(selectedTab == .home ? .blue : .gray)
                            .frame(width: proxy.size.width / 3)
                    }

                    Button {
                        withAnimation {
                            self.selectedTab = .cart
                        }
                    } label: {
                        Image(systemName: "cart.fill")
                            .font(.system(size: selectedTab == .cart ? 36 : 23))
                            .foregroundColor(selectedTab == .cart ? .blue : .gray)
                            .frame(width: proxy.size.width / 3)
                    }
                    
                    Button {
                        withAnimation {
                            self.selectedTab = .profile
                        }
                    } label: {
                        Image(systemName: "person.crop.circle.fill")
                            .font(.system(size: selectedTab == .profile ? 36 : 23))
                            .foregroundColor(selectedTab == .profile ? .blue : .gray)
                            .frame(width: proxy.size.width / 3)
                    }
                }
                .padding(.top, 10)
                .frame(maxHeight: 50)
                .background(.white)
            }
        }
    }
}

struct TabRootView_Previews: PreviewProvider {
    static var previews: some View {
        TabRootView()
    }
}
