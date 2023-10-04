//
//  PopUpView.swift
//  SwiftUI-Tutorial-ToastPopUp
//
//  Created by dev on 2023/10/04.
//

import SwiftUI

struct PopUpView: View {
    
    @Binding var shouldShowPopUp: Bool
    
    // MARK: - View
    
    var body: some View {
        VStack(spacing: 12) {
            Image("Cat")
                .resizable()
                .frame(width: 100, height: 100)
                .scaledToFit()
            
            Text("고양이를 좋아하십니까?")
                .font(.headline)
            
            Text("참고로 개발자는 고양이를 키우고 사랑합니다.\n 따라서 누를 수 있는 선택지는 '예'와 '매우' 두 개 뿐 입니다.")
                .padding(.bottom)
                .multilineTextAlignment(.center)
            
            HStack(spacing: 18) {
                Button {
                    shouldShowPopUp = false
                } label: {
                    Text("예")
                        .frame(width: 70, height: 30)
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Button {
                    shouldShowPopUp = false
                } label: {
                    Text("매우 좋아함")
                        .frame(width: 120, height: 30)
                        .background(.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

            }
        }
        .padding()
        .background(.white)
        .cornerRadius(18)
    }
}

//struct PopUpView_Previews: PreviewProvider {
//    static var previews: some View {
//        PopUpView(shouldShowPopUp: )
//    }
//}
