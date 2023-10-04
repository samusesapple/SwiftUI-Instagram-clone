//
//  ContentView.swift
//  SwiftUI-Tutorial-ToastPopUp
//
//  Created by dev on 2023/10/04.
//

import SwiftUI
import PopupView

struct ContentView: View {
    
    @State var bottomSolidButtonDidTapped: Bool = false
    @State var bottomToastButtonDidTapped: Bool = false
    @State var topSolidButtonDidTapped: Bool = false
    @State var topToastButtonDidTapped: Bool = false
    @State var popUpButtonDidTapped: Bool = false

    // MARK: - View
    var body: some View {
        VStack(spacing: 16) {
            CustomButton(title: "Bottom Solid",
                         color: .green) {
                bottomSolidButtonDidTapped.toggle()
            }
            
            CustomButton(title: "Bottom Toast",
                         color: .blue) {
                bottomToastButtonDidTapped.toggle()
            }
            
            CustomButton(title: "Top Solid",
                         color: .brown) {
                topSolidButtonDidTapped.toggle()
            }

            CustomButton(title: "Top Toast",
                         color: .cyan) {
                topToastButtonDidTapped.toggle()
            }
            
            CustomButton(title: "Pop Up",
                         color: .red) {
                popUpButtonDidTapped.toggle()
            }
        }
        .padding()
        // Bottom Solid Message
        .popup(isPresented: $bottomSolidButtonDidTapped) {
            SolidMessageView(position: .bottom)
        } customize: {
            $0.autohideIn(2)
                .position(.bottom)
        }
        // Bottom Toast Message
        .popup(isPresented: $bottomToastButtonDidTapped) {
            ToastMessageView(position: .bottom)
        } customize: {
            $0.autohideIn(2)
                .type(.floater())
                .position(.bottom)
                .backgroundColor(.black.opacity(0.5))
        }
        
        // Top Solid Message
        .popup(isPresented: $topSolidButtonDidTapped) {
            SolidMessageView(position: .top)
        } customize: {
            $0.autohideIn(2)
                .position(.top)
        }
        
        // Top Toast Message
        .popup(isPresented: $topToastButtonDidTapped) {
            ToastMessageView(position: .top)
        } customize: {
            $0.autohideIn(2)
                .type(.floater())
                .position(.top)
                .backgroundColor(.black.opacity(0.5))
        }

        // Pop Up
        .popup(isPresented: $popUpButtonDidTapped) {
            HStack {
                PopUpView(shouldShowPopUp: $popUpButtonDidTapped)
            }
        } customize: {
            $0.type(.default)
                .position(.center)
                .dragToDismiss(false)
                .backgroundColor(.black.opacity(0.5))
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
