//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Hidaner Ferrer on 1/15/21.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            // To create lists from collections, we provide a path to a property
            // that uniquely identifies each element or by making the data conform to Identifiable
            List(landmarks) { landmark in
                // this code connects this navigation view with the details of each row
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        /*
          When the elements of your data are simple value types — like the strings you’re using here — you can use
          \.self as key path to the identifier.
         */
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: "iPhone SE (2nd generation"))
                .previewDisplayName(deviceName)
        }
    }
}
