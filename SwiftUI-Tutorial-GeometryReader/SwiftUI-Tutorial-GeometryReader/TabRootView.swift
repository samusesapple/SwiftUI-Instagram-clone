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
    
    // MARK: - States
    
    @State var selectedTab: Menu = .home
    
    // MARK: - Computed Properties
    
    var circleXPosition: (Menu, GeometryProxy) -> CGFloat = {
        var times: CGFloat = 0
        
        switch $0 {
        case .home:
            times = -1
        case .cart:
            times = 0
        case .profile:
            times = 1
        }
        return CGFloat($1.size.width / 3 * times)
    }
    
    var view: (Menu) -> TestView = {
        switch $0 {
        case .home:
            return TestView(title: "홈",
                     backgroundColor: .red)
        case .cart:
            return TestView(title: "장바구니",
                     backgroundColor: .green)
        case .profile:
            return TestView(title: "프로필",
                     backgroundColor: .blue)
        }
    }
    
    // MARK: - Draw
    
    var body: some View {
        
        GeometryReader { proxy in
            
            ZStack(alignment: .bottom) {
                
                // 배경이 되는 view
                view(selectedTab)
                
                // 탭바 선택에 따른 동그라미 애니메이션
                Circle()
                    .fill(.white)
                    .frame(width: 100, height: 100)
                    .offset(x: circleXPosition(selectedTab, proxy) ,y: 20)
//                    .position(tabBarPosition(selectedTab, proxy))
                
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
                .padding(.vertical, 10)
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
