//
//  BottomSolidMessageView.swift
//  SwiftUI-Tutorial-ToastPopUp
//
//  Created by dev on 2023/10/04.
//

import SwiftUI

struct SolidMessageView: View {
    
    var position: Position
    
    // MARK: - View
    
    var body: some View {
        VStack {
            if position == .top {
                Spacer()
                    .frame(height: UIScreen.topSafeArea)
            }
            
            HStack(alignment: .top, spacing: 20) {
                Image("Sam")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                
                VStack(alignment: .leading,spacing: 10) {
                    Text("Bottom Solid Message View")
                        .foregroundColor(.white)
                        .font(.headline)
                        .bold()
                    
                    Text("화면 \(position == .top ? "최상단" : "최하단")에 나타날 솔리드 메세지")
                        .foregroundColor(.white)
                }
                
                Spacer()
            }
        }
        .padding()
        .background(position == .top ? .brown : .green)
    }
}

struct BottomSolidMessageView_Previews: PreviewProvider {
    static var previews: some View {
        SolidMessageView(position: .top)
    }
}
