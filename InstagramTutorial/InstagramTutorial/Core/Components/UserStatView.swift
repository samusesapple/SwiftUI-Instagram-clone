//
//  UserStatView.swift
//  InstagramTutorial
//
//  Created by Sam Sung on 2023/06/13.
//

import SwiftUI

struct UserStatView: View { 
    let value: Int
    let title: String
    
    var body: some View {
        VStack {
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            
            Text(title)
                .font(.footnote)
        }
        // make frame to make spaces
        .frame(width: 76)
    }
}

struct UserStatView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatView(value: 12, title: "제목")
    }
}
