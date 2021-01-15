//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Hidaner Ferrer on 1/15/21.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        // To create lists from collections, we provide a path to a property
        // that uniquely identifies each element or by making the data conform to Identifiable
        List(landmarks) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
