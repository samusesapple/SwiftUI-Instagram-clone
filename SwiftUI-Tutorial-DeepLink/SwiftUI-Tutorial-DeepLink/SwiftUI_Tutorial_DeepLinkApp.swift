//
//  SwiftUI_Tutorial_DeepLinkApp.swift
//  SwiftUI-Tutorial-DeepLink
//
//  Created by Sam Sung on 2023/10/05.
//

import SwiftUI

@main
struct SwiftUI_Tutorial_DeepLinkApp: App {
    
    @State var selectedTab = TabIdentifier.todo
    
    var body: some Scene {
        WindowGroup {
            TabView(selection: $selectedTab) {
                ToDoListView().tabItem {
                    Image(systemName: "list.clipboard.fill")
                }
                .tag(TabIdentifier.todo)
                
                ContentView().tabItem {
                    Image(systemName: "flag.filled.and.flag.crossed")
                }
                .tag(TabIdentifier.profile)
            }
            .onOpenURL { url in
                guard let tabId = url.tabIdentifier else {
                    return
                }
                selectedTab = tabId
            }
        }
    }
}
