//
//  ContentView.swift
//  WatchLandmarks Extension
//
//  Created by Hidaner Ferrer on 3/23/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
