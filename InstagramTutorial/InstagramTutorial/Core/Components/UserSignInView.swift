//
//  UserSignInView.swift
//  InstagramTutorial
//
//  Created by Sam Sung on 2023/06/16.
//

import SwiftUI

struct UserSignInView: View {
    let title: String
    let detailInfo: String
    let textField: any View
    
    @State var email = ""
    
    var body: some View {
        VStack(spacing: 12) {
            Text(title)
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text(detailInfo)
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            TextField(, text: $email)
                .autocapitalization(.none)
                .modifier(TextFieldModifier())
                .padding(.top)
            
            Button {
                print("Login button Tapped")
            } label: {
                Text("Login")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
            }
            .padding(.vertical)
            
            Spacer()
        }
        
    }
}

struct UserSignInView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatView(value: 12, title: "제목")
    }
}
