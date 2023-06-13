//
//  FeedCell.swift
//  InstagramTutorial
//
//  Created by Sam Sung on 2023/06/13.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0...10, id: \.self) { post in
                    FeedCell()
                }
            }
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
