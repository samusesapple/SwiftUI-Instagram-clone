//
//  ContentView.swift
//  SwiftUI-Tutorial-GeometryReader
//
//  Created by dev on 2023/09/13.
//

import SwiftUI

enum Index {
    case one, two, three
}

struct ContentView: View {
    
    @State var index: Index = .one
    
    let centerPoint: (GeometryProxy) -> CGPoint = { proxy in
        return CGPoint(x: proxy.frame(in: .local).midX,
                       y: proxy.frame(in: .local).midY)
    }
    
    var body: some View {
     
        GeometryReader { proxy in
                VStack(spacing: 0) {
                    Button {
                        withAnimation {
                            self.index = .one
                        }
                    } label: {
                        Text("1")
                            .font(.largeTitle)
                            .fontWeight(.black)
                            .frame(width: 40, height: proxy.size.height / 3)
                            .padding(.horizontal, self.index == .one ? 40 : 0)
                            .foregroundColor(.white)
                            .background(.red)
                    }
                    
                    Button {
                        withAnimation {
                            self.index = .two
                        }
                    } label: {
                        Text("2")
                            .font(.largeTitle)
                            .fontWeight(.black)
                            .frame(width: 40, height: proxy.size.height / 3)
                            .padding(.horizontal, self.index == .two ? 40 : 0)
                            .foregroundColor(.white)
                            .background(.blue)
                    }
                    
                    Button {
                        withAnimation {
                            self.index = .three
                        }
                    } label: {
                        Text("3")
                            .font(.largeTitle)
                            .fontWeight(.black)
                            .frame(width: 40, height: proxy.size.height / 3)
                            .padding(.horizontal, self.index == .three ? 40 : 0)

                            .foregroundColor(.white)
                            .background(.green)
                    }
                }
                .position(centerPoint(proxy))
                
        }
        .background(.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
