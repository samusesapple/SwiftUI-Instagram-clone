//
//  FriendList.swift
//  SwiftUI-Tutorial-PickerView
//
//  Created by Sam Sung on 2023/10/04.
//

import SwiftUI

func getFriendList() -> [Friend] {
    var newFriendList: [Friend] = []
    
    for i in 0...20 {
        let newFriend = Friend(name: "친구 \(i)",
                               school: School.allCases.filter {
            $0 != .all
        }.randomElement() ?? .elementary)
        newFriendList.append(newFriend)
    }
    
    return newFriendList
}

struct FriendList: View {
    
    private var schoolList: [School] = [.all, .elementary, .middle, .high]
    
    @State private var friendList: [Friend]
    
    @State private var filteredValue: School = .elementary
    
    // MARK: - Initializer
    init() {
        _friendList = State(initialValue: getFriendList())
    }
    
    // MARK: - View
    var body: some View {
        VStack {
            Text(
                filteredValue != .all ?
                "선택된 학교: \(filteredValue.rawValue)" : "전체 학생"
            )
            
            Picker("",
                   selection: $filteredValue) {
                ForEach(schoolList, id: \.self) {
                    Text($0.rawValue).tag($0.rawValue)
                }
            }
                   .pickerStyle(.segmented)
                   .padding()
            
            List {
                ForEach(friendList.filter {
                    if filteredValue != .all { // 전체가 아니라면 filteredValue에 해당되는 학생만 list에 표시
                        return $0.school == filteredValue
                    } else { // 전체가 맞다면 .name이 비어있지 않은 학생 표시 (모든 학생)
                        return !$0.name.isEmpty
                    }
                },
                        id: \.self) { list in
                    GeometryReader { proxy in
                        HStack {
                            Text(list.name)
                                .frame(width: proxy.size.width / 3)
                            
                            Divider()
                                .foregroundColor(.black)
                            
                            Text(list.school.rawValue)
                                .frame(width: proxy.size.width / 2)
                        }
                    }
                }
            }
        }
    }
}

struct FriendList_Previews: PreviewProvider {
    static var previews: some View {
        FriendList()
    }
}
