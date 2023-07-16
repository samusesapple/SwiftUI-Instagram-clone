//
//  InfoView.swift
//  SwiftUI-Tutorial-2
//
//  Created by Sam Sung on 2023/07/15.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .fill(.white)
            .frame(height: 45)
            .overlay(HStack {
                    Image(systemName: imageName)
                        .foregroundColor(Color(red: 0.8,
                                               green: 0.54,
                                               blue: 0.25))
                    Text(text)
                        .font(Font.custom("Roboto-Regular", size: 15))
                        .foregroundColor(.black)
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
