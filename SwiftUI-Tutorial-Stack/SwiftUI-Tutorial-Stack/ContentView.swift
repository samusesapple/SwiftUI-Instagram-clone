//
//  ContentView.swift
//  SwiftUI-Tutorial-Stack
//
//  Created by dev on 2023/09/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            VStack(spacing: 14) {
                PersonalCard()
                BasicCard()
                BasicCard()
                BasicCard()
                BasicCard()
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
                    .padding(.trailing, 10)
                    .shadow(radius: 10)
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
