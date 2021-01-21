//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Hidaner Ferrer on 1/14/21.
//

import SwiftUI

@main
struct LandmarksApp: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
