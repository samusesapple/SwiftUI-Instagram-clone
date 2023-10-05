//
//  ContentView.swift
//  SwiftUI-Tutorial-DeepLink
//
//  Created by Sam Sung on 2023/10/05.
//

import SwiftUI


struct ContentView: View {

    // MARK: - View
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color.init(uiColor: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)))
            
            VStack {
                Image("Sam")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                
                Text("Sam")
                    .font(Font.system(size: 20, weight: .bold))
                
                Text("iOS Developer")
            }
            .foregroundColor(.white)
        }
        .background(Color.init(uiColor: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

