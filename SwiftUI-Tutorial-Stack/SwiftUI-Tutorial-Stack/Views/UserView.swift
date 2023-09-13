//
//  UserView.swift
//  SwiftUI-Tutorial-Stack
//
//  Created by dev on 2023/09/13.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        VStack {
            // '내 정보 수정' view로 이동
            NavigationLink {
                Text("내 정보 수정")
            } label: {
                Image("randomUser2")
                    .resizable()
                    .frame(width: 270, height: 270)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .overlay {
                        Circle()
                            .stroke(Color.blue, lineWidth: 10)
                    }
                    .shadow(radius: 10)
                    .padding(.bottom, 30)
            }
            
            HStack {
                // 네이버 웹뷰로 이동
                NavigationLink {
                    WebView(siteURLString: "https://www.naver.com")
                        .edgesIgnoringSafeArea(.all)
                } label: {
                    Text("네이버")
                        .font(.system(size: 20,
                                      weight: .bold))
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(20)
                }
                
                Divider()
                    .frame(width: 25, height: 0)
                
                // 네이버 웹뷰로 이동
                NavigationLink {
                    WebView(siteURLString: "https://www.google.com")
                        .edgesIgnoringSafeArea(.all)
                } label: {
                    Text("구글")
                        .font(.system(size: 20,
                                      weight: .bold))
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(20)
                }
            }
            .padding(.horizontal)
        }
        .padding(.bottom, 100)
        .navigationTitle("내 정보")
        // 네비게이션 오른쪽 바 버튼
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink {
                    Text("설정 버튼 눌림")
                } label: {
                    Image(systemName: "eraser.fill")
                        .foregroundColor(.black)
                }
            }
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
