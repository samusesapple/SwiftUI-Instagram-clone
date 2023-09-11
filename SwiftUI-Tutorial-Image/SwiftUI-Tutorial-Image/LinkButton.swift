//
//  LinkButton.swift
//  SwiftUI-Tutorial-Image
//
//  Created by dev on 2023/09/11.
//

import SwiftUI

struct LinkButton: View {
    
    let urlString: String
    let buttonTitle: String
    let buttonColor: Color
    
    var body: some View {
        NavigationLink {
            LinkView(urlString: urlString)
                .edgesIgnoringSafeArea(.all)

        } label: {
            Text(buttonTitle)
                .font(.system(size: 24,
                              weight: .bold))
                .padding()
                .background(buttonColor)
                .cornerRadius(20)
                .foregroundColor(.white)
        }
    }
}

struct LinkButton_Previews: PreviewProvider {
    static var previews: some View {
        LinkButton(urlString: "https://www.google.com",
                   buttonTitle: "구글",
                   buttonColor: .blue)
    }
}
