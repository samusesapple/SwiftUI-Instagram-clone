//
//  PersonImage.swift
//  SwiftUI-Tutorial-Stack
//
//  Created by dev on 2023/09/11.
//

import SwiftUI

struct PersonImage: View {
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: 50, height: 50)
            .clipShape(Circle())
            .shadow(radius: 4)
    }
}

struct PersonImage_Previews: PreviewProvider {
    static var previews: some View {
        PersonImage(imageName: "randomUser1")
    }
}
