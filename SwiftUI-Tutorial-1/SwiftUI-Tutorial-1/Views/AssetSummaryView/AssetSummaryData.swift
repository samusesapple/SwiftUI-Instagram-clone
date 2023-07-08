//
//  AssetSummaryData.swift
//  SwiftUI-Tutorial-1
//
//  Created by Sam Sung on 2023/07/08.
//

import SwiftUI

class AssetSummaryData: ObservableObject {
    @Published var assets: [Asset] = load("assets.json")
    
    
}

func load<T: Decodable>(_ fileName: String) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil) else {
        fatalError("No File exists : \(fileName)")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("No File exists 2 : \(fileName)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("PARSING Failed : \(fileName)")
    }
}
