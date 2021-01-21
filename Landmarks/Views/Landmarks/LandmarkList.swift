//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Hidaner Ferrer on 1/15/21.
//

import SwiftUI

struct LandmarkList: View {
    
    
    @EnvironmentObject var modelData: ModelData
    // This is to declare a State that changes in this view
    @State private var showFavoritesOnly = false
    
    // filtered version of the landmarks list
    var filteredLandmarks:[Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
        // To create lists from collections, we provide a path to a property
        // that uniquely identifies each element or by making the data conform to Identifiable
            List {
                // You use the $ prefix to access a binding to a state variable, or one of its properties.
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks) { landmark in
                // this code connects this navigation view with the details of each row
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                    }
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
//        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .environmentObject(ModelData())
//                .previewDevice(PreviewDevice(rawValue: "iPhone SE (2nd generation"))
//                .previewDisplayName(deviceName)
//        }
    }
}
