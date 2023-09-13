//
//  Card.swift
//  SwiftUI-Tutorial-Stack
//
//  Created by dev on 2023/09/11.
//

import SwiftUI

struct PersonalCard: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Rectangle()
                .frame(height: 0)
            // 제목
            Text("기상")
                .font(.system(size: 23,
                              weight: .black))
                .padding(.bottom, 4)
            
            // 시간
            Text("7 AM")
                .foregroundColor(.gray)
            
            // 유저 목록 + 확인 버튼
            HStack {
                PersonImage(imageName: "randomUser1")
                PersonImage(imageName: "randomUser2")
                PersonImage(imageName: "randomUser3")
                
                Spacer()
                
                // 확인 버튼
                Button {
                    print("버튼 눌림")
                } label: {
                    Text("확인")
                        .fontWeight(.bold)
                        .padding()
                        .frame(width: 90)
                        .background(.blue)
                        .cornerRadius(20)
                        .foregroundColor(.white)
                }
            }
            .padding(.vertical, 10)
        }
        .padding(25)
        .background(.yellow)
        .cornerRadius(20)
    }
}

struct PersonalCard_Previews: PreviewProvider {
    static var previews: some View {
        PersonalCard()
    }
}
