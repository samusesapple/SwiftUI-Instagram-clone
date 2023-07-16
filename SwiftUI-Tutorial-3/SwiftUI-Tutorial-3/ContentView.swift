//
//  ContentView.swift
//  SwiftUI-Tutorial-3
//
//  Created by Sam Sung on 2023/07/16.
//

import SwiftUI

struct ContentView: View {
    
    @State var isActivated: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    MyVStackViews(isActivated: isActivated)
                    MyVStackViews(isActivated: isActivated)
                    MyVStackViews(isActivated: isActivated)
                }
                .onTapGesture {
                    withAnimation {
                        self.isActivated.toggle()
                    }
                }
                .background(isActivated ? .red : .yellow)
                
                Spacer()
                    .frame(height: 50)
                
                NavigationLink {
                    NewView(isActivated: $isActivated)
                } label: {
                    Text("PRESS")
                        .padding()
                        .font(.system(size: 30))
                        .bold()
                        .foregroundColor(.black)
                        .background(isActivated ? .yellow : .red)
                        .cornerRadius(18)
                }
                .padding(.top, 20)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
