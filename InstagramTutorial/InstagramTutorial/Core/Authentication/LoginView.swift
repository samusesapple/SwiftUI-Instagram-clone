//
//  LoginView.swift
//  InstagramTutorial
//
//  Created by Sam Sung on 2023/06/16.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                // logo Image
                Image("instagram_logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 220, height: 100)
                
                // textField - Email, Password
                VStack {
                    TextField("Email", text: $email)
                        .autocapitalization(.none)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                    
                    SecureField("Password", text: $password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                }
                // forgot password Button
                Button {
                    print("Forgot Password button Tapped")
                } label: {
                    Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top, 10)
                        .padding(.trailing, 28)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                // Login Button
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
                
                // -OR-
                HStack {
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                }
                .foregroundColor(.gray)
                
                // Facebook login
                HStack {
                    Image("facebook_logo")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .scaledToFit()
                    Button("Continue with Facebook") {
                        print("FB Login button Tapped")
                    }
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(.systemBlue))
                }
                .padding(.top, 8)
                
                Spacer()
                
                Divider()
                
                // Sign Up - navigation link
                NavigationLink {
                    Text("Sign up!")
                } label: {
                    HStack(spacing: 3) {
                        Text("Don't have an account?")
                        
                        Text("Sign Up!")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                }
                .padding(.vertical, 16)
                
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
