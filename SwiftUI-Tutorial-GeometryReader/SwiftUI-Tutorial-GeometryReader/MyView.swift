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
    
    
    var body: some View {
     
        GeometryReader { geomerty in
            HStack {
                Spacer()
                
                VStack(spacing: 0) {
                    Button {
                        withAnimation {
                            self.index = .one
                        }
                    } label: {
                        Text("1")
                            .font(.largeTitle)
                            .fontWeight(.black)
                            .frame(width: 40, height: geomerty.size.height / 3)
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
                            .frame(width: 40, height: geomerty.size.height / 3)
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
                            .frame(width: 40, height: geomerty.size.height / 3)
                            .padding(.horizontal, self.index == .three ? 40 : 0)

                            .foregroundColor(.white)
                            .background(.green)
                    }
                }
                
                Spacer()
            }
        }
        .background(.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
