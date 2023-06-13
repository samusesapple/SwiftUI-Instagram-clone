//
//  ProfileView.swift
//  InstagramTutorial
//
//  Created by Sam Sung on 2023/06/13.
//

import SwiftUI

struct ProfileView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                // header View
                VStack(spacing: 10) {
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
                            UserStatView(value: 3, title: "Posts")
                            UserStatView(value: 12, title: "Followers")
                            UserStatView(value: 10, title: "Following")
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
                LazyVGrid(columns: gridItems, spacing: 2) {
                    ForEach(0 ... 15, id: \.self) { index in
                        Image("cat")
                            .resizable()
                            .scaledToFill()
                    }
                        
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                    }
                    .foregroundColor(.black)
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
