//
//  LandmarksApp.swift
//  WatchLandmarks Extension
//
//  Created by Hidaner Ferrer on 3/23/21.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
