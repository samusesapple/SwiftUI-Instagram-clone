//
//  CustomButton.swift
//  SwiftUI-Tutorial-ToastPopUp
//
//  Created by dev on 2023/10/04.
//

import SwiftUI

struct CustomButton: View {
    
    var title: String
    var color: Color
    
    var action: () -> Void
    
    // MARK: - View
    var body: some View {
        Button {
            action()
        } label: {
            Text(title)
                .padding()
                .foregroundColor(.white)
                .font(.headline)
                .background(color)
                .cornerRadius(10)
        }
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(title: "버튼 제목",
                     color: .blue) {
            print("버튼 눌림")
        }
    }
}
