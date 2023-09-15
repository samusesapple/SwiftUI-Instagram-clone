//
//  SearchResult.swift
//  SwiftUI-Tutorial-SearchList
//
//  Created by dev on 2023/09/15.
//

import SwiftUI

struct SearchResult: View {
    
    // MARK: - Properties
    
    let text: String
    let image: Image?
    
    // MARK: - Initializer
    
    init(text: String, image: Image? = nil) {
        self.text = text
        self.image = image
    }
    
    // MARK: - View
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(text)
                .font(.system(size: 18, weight: .semibold))
            
            if image != nil {
                HStack {
                    Spacer()
                    
                    image!
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100)
                }
            }
        }
        .padding(.all)
    }
}

struct SearchResult_Previews: PreviewProvider {
    static var previews: some View {
        SearchResult(text: "검색 결과",
                     image: Image("placeholder"))
    }
}
