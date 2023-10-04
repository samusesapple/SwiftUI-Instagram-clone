//
//  ContentView.swift
//  SwiftUI-Tutorial-PickerView
//
//  Created by dev on 2023/10/04.
//

import SwiftUI

struct ContentView: View {
    
    var colors: [ColorType] = [.red, .yellow, .blue]
    
    @State private var selectedColor: ColorType = .red
    
    // MARK: - View
    var body: some View {
        
        VStack(spacing: 18) {
            Text("선택된 색 : \(selectedColor.rawValue)")
                .padding()
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(.white)
                .background(
                    selectedColor == .blue ? .blue : selectedColor == .red ? .red : .yellow
                )
                .cornerRadius(19)
            
            Picker("",
                   selection: $selectedColor) {
                ForEach(colors, id: \.self) {
                    Text($0.rawValue)
                }
            }
                   .pickerStyle(.segmented)
                   .padding()
            
            Picker("",
                   selection: $selectedColor) {
                ForEach(colors, id: \.self) {
                    Text($0.rawValue)
                }
            }
                   .pickerStyle(.wheel)
                   .frame(width: 120, height: 120)
                   .border(selectedColor == .blue ? .blue : selectedColor == .red ? .red : .yellow,
                           width: 6)
                   .cornerRadius(4)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
