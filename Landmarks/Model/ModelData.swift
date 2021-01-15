//
//  ModelData.swift
//  Landmarks
//
//  Created by Hidaner Ferrer on 1/14/21.
//

import Foundation

// this is an array of landmarks that come from the .JSON file and it requests data using Landmark.swift struct
var landmarks: [Landmark] = load("landmarkData.json")

// load(_:) method that fetches JSON  data with a given name from the app's main bundle
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
