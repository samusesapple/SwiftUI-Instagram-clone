//
//  ContentView.swift
//  SwiftUI-Tutorial-2
//
//  Created by Sam Sung on 2023/07/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.15, green: 0.24, blue: 0.55)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("sam")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(Color.yellow.opacity(0.7), lineWidth: 5)
                    )
                
                Text("Sam Sung")
                    .font(Font.custom("Roboto-Bold", size: 38))
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .font(Font.custom("Roboto-Regular", size: 23))
                    .foregroundColor(.white)
                Divider()
                
                InfoView(text: "gwansammy@gmail.com",
                         imageName: "envelope")
                InfoView(text: "https://github.com/samusesapple",
                         imageName: "globe")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

