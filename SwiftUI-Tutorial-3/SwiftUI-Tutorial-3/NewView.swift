//
//  NewView.swift
//  SwiftUI-Tutorial-3
//
//  Created by Sam Sung on 2023/07/16.
//

import SwiftUI

struct NewView: View {
    @Binding var isActivated: Bool
    
    init(isActivated: Binding<Bool> = .constant(false)) {
        _isActivated = isActivated
    }
    
    // MARK: - View
    var body: some View {
        ZStack {
            Color(isActivated ?
                .red.withAlphaComponent(0.3) : .yellow.withAlphaComponent(0.4))
                .edgesIgnoringSafeArea(.all)
            VStack {
                
                Image(systemName: "hand.thumbsup")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
                    .foregroundColor(.black)
                
                Text(isActivated ? "활성화 상태" : "비활성화 상태")
                    .padding(.top, 40)
                    .font(.system(size: 30))
                    .bold()
                    .padding(.all)
                    .clipShape(RoundedRectangle(cornerRadius: 18))
            }
            .padding()
        }
    }
}

struct NewView_Previews: PreviewProvider {
    static var previews: some View {
        NewView()
    }
}
