//
//  CreateUserNameView.swift
//  InstagramTutorial
//
//  Created by Sam Sung on 2023/06/16.
//

import SwiftUI

struct CreateUserNameView: View {
    @State private var userName = ""
    var body: some View {
        VStack(spacing: 12) {
            Text("Create username")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("Pick a username for your account. You can always change it later.")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            TextField("username", text: $userName)
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
struct CreateUserNameView_Previews: PreviewProvider {
    static var previews: some View {
        CreateUserNameView()
    }
}
