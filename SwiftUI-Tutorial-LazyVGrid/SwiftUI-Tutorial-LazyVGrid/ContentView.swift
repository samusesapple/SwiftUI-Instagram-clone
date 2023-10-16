//
//  ContentView.swift
//  SwiftUI-Tutorial-LazyVGrid
//
//  Created by dev on 2023/10/12.
//

import SwiftUI

struct ContentView: View {
    
    let dummyData = User.getDummyData
    
    var body: some View {
        // scrollView로 감싸서 스크롤 가능하도록 세팅
        ScrollView {
            // columns 안에 VGrid의 설정을 배열 형태로 줌
            LazyVGrid(columns: [GridItem(.fixed(200),
                                         spacing: 200,
                                         alignment: .leading)]) {
                ForEach(dummyData, id: \.self) { data in
                    Text(data.name)
                        .padding()
                        .foregroundColor(.white)
                        .background(.blue)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
