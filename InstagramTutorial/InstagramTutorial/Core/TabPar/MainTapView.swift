//
//  MainTapView.swift
//  InstagramTutorial
//
//  Created by Sam Sung on 2023/06/13.
//

import SwiftUI

struct MainTapView: View {
    var body: some View {
        TabView {
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                }
            Text("Search")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            Text("Upload Post")
                .tabItem {
                    Image(systemName: "plus.square")
                }
            Text("Notifications")
                .tabItem {
                    Image(systemName: "heart")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                }
        }
        .accentColor(.black)
    }
}

struct MainTapView_Previews: PreviewProvider {
    static var previews: some View {
        MainTapView()
    }
}
