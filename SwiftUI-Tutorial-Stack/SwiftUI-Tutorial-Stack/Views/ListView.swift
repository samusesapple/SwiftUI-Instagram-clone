//
//  ListView.swift
//  SwiftUI-Tutorial-Stack
//
//  Created by dev on 2023/09/13.
//

import SwiftUI

struct ListView: View {
    
    // 버전에 따른 셀 사이의 분리선 설정 (분리선 지우고 싶은 경우)
    init() {
        if #available(iOS 14.0, *) {
            // 어차피 14.0 이전에는 셀 간의 분리선 없음
        } else {
            UITableView.appearance().tableFooterView = UIView()
        }
        
        UITableView.appearance().separatorStyle = .none
    }
    
    var body: some View {
        List {
            // 첫번째 섹션
            Section(
                header: Text("첫번째 헤더").font(.system(size: 20,weight: .bold)),
                footer: Text("푸터").font(.callout)
            ) {
                BasicCard(icon: Image(systemName: "person.fill"),
                          title: "헤더 셀",
                          timeString: "헤더",
                          color: .purple)
            }
            .listRowInsets(.init(top: 10,
                                 leading: 10,
                                 bottom: 10,
                                 trailing: 10))
            
            // 두번째 섹션
            Section(header:
                        Text("두번째 헤더")
                .font(.system(size: 20,
                              weight: .bold))
            ) {
                ForEach(1...10, id: \.self) {
                    BasicCard(icon: Image(systemName: "figure.run"),
                              title: "\($0)번째 cell",
                              timeString: "\($0)",
                              color: .blue)
                    .listRowSeparator(.hidden)
                }
            }
            .listRowInsets(.init(top: 10,
                                 leading: 10,
                                 bottom: 10,
                                 trailing: 10))
        }
        .listStyle(.grouped)
        .navigationTitle("목록")
        
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
