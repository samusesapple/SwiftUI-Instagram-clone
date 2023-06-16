//
//  FeedView.swift
//  InstagramTutorial
//
//  Created by Sam Sung on 2023/06/13.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack {
            // image + userName
            HStack {
                Image("cat")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                Text("고양이")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Spacer()
            }
            .padding(.leading, 8)
            
            // 포스팅 된 이미지
            Image("cat")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            // action Buttons
            HStack(spacing: 16) {
                Button {
                    print("좋아요")
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                
                Button {
                    print("댓글")
                } label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                
                Button {
                    print("공유")
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                Spacer()
            }
            .padding(.leading, 8)
            .padding(.top, 4)
            .foregroundColor(.black)
            
            // 좋아요 상태 label
            HStack {
                Text("23명")                  .fontWeight(.semibold) +
                Text("이 좋아합니다.")
            }
            .font(.footnote)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 10)
            .padding(.top, 2)
            
            // 유저 이름 label + 포스팅한 label
            HStack {
                Text("고양이 ")                  .fontWeight(.semibold) +
                Text("냐옹")
            }
            .font(.footnote)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 10)
            .padding(.top, 1)
            
            Text("6시간 전")
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
                .foregroundColor(.gray)
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}
