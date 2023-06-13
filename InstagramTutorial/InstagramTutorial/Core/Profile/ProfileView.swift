//
//  ProfileView.swift
//  InstagramTutorial
//
//  Created by Sam Sung on 2023/06/13.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            // header
            VStack {
                // profilePicture, status
                HStack {
                    Image("cat")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())
                    
                Spacer()
                    // post, follower, following Status
                    HStack(spacing: 8) {
                        VStack {
                            Text("3")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            
                            Text("Post")
                                .font(.footnote)
                        }
                        // make frame to make spaces
                        .frame(width: 76)
                        
                        VStack {
                            Text("3")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            
                            Text("Followers")
                                .font(.footnote)
                        }
                        .frame(width: 76)
                        
                        VStack {
                            Text("3")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            
                            Text("Following")
                                .font(.footnote)
                        }
                        .frame(width: 76)
                    }
                }
                .padding(.horizontal)
                // user name & bio
                VStack(alignment: .leading, spacing: 4) {
                    Text("Hyunkwan Sung")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Text("Swifting iOS developer")
                        .font(.footnote)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                // action Button
                Button {
                    
                } label: {
                    Text("Edit Profile")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 32)
                        .foregroundColor(.black)
                        .overlay(RoundedRectangle(cornerRadius: 6)
                            .strokeBorder(Color.gray, lineWidth: 1)
                        )
                }
                Divider()
            }
            // post grid view
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
