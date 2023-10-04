//
//  BottomToastMessageView.swift
//  SwiftUI-Tutorial-ToastPopUp
//
//  Created by dev on 2023/10/04.
//

import SwiftUI



struct ToastMessageView: View {
    
    var position: Position
    
    // MARK: - View
    var body: some View {
        HStack(alignment: .top) {
            Image("Sam")
                .resizable()
                .frame(width: 60, height: 60)
                .scaledToFit()
                .clipShape(Circle())
                .padding()
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Bottom Toast Message")
                    .foregroundColor(.white)
                    .font(.headline)
                    .bold()
                
                Text("이것은 화면 \(position == .top ? "최상단" : "최하단")으로부터 떠오를 토스트 메세지 입니다. 사진은 제 이모지를 넣어보았습니다. 지금은 앞머리가 많이 자라 저것보다 머리가 긴 상태 입니다.")
            }
            .padding([.vertical, .trailing])
        }
        .foregroundColor(.white)
        .background(position == .top ? .cyan : .blue)
        .cornerRadius(30.0)
        .padding()
    }
}

struct BottomToastMessageView_Previews: PreviewProvider {
    static var previews: some View {
        ToastMessageView(position: .top)
    }
}
