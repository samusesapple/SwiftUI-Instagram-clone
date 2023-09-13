//
//  ContentView.swift
//  SwiftUI-Tutorial-Stack
//
//  Created by dev on 2023/09/11.
//

import SwiftUI

struct ContentView: View {
    
    @State var isNavigationBarHidden: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottomTrailing) {
                VStack(alignment: .leading, spacing: 0) {
                    // 상단바 (커스텀 네비게이션바)
                    HStack {
                        NavigationLink {
                            ListView()
                                .navigationBarTitleDisplayMode(.large)
                        } label: {
                            Image(systemName: "line.horizontal.3")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                        }
                        
                        Spacer()
                        
                        NavigationLink {
                            UserView()
                        } label: {
                            Image(systemName: "person.crop.circle.fill")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                        }
                    }
                    
                    // 제목
                    Text("현관이의 하루 일과")
                        .font(.system(size: 32,
                                      weight: .bold))
                        .padding(.vertical)
                    
                    // 목록 스크롤뷰
                    ScrollView {
                        VStack(spacing: 14) {
                            PersonalCard()
                            BasicCard(icon: Image(systemName: "desktopcomputer"),
                                      title: "출근",
                                      timeString: "10 AM",
                                      color: .blue)
                            BasicCard(icon: Image(systemName: "fork.knife"),
                                      title: "점심시간",
                                      timeString: "12:30 PM ~ 13:30 PM",
                                      color: .orange)
                            BasicCard(icon: Image(systemName: "cup.and.saucer.fill"),
                                      title: "커피 한 잔의 여유",
                                      timeString: "16 PM",
                                      color: .brown)
                            BasicCard(icon: Image(systemName: "figure.run"),
                                      title: "퇴근",
                                      timeString: "19 PM",
                                      color: .pink)
                            BasicCard(icon: Image(systemName: "fork.knife"),
                                      title: "저녁 식사",
                                      timeString: "21 PM",
                                      color: .purple)
                            BasicCard(icon: Image(systemName: "bed.double.fill"),
                                      title: "취침",
                                      timeString: "10:30 PM",
                                      color: .black.opacity(0.9))
                        }
                    }
                }
                .padding()
                
                // plus button
                Button {
                    print("추가 버튼 눌림")
                } label: {
                    Circle()
                        .foregroundColor(.yellow)
                        .frame(width: 60, height: 60)
                        .overlay {
                            Image(systemName: "plus")
                                .font(.system(size: 30, weight: .bold))
                                .foregroundColor(.white)
                        }
                }
                .padding(20)
                .shadow(radius: 10)
            }
            .navigationTitle("메인")
            .toolbar(isNavigationBarHidden ? .hidden : .visible)
            .onAppear {
                self.isNavigationBarHidden = true
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
