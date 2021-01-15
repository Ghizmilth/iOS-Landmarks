//
//  Landmark.swift
//  Landmarks
//
//  Created by Hidaner Ferrer on 1/14/21.
//

import Foundation
import SwiftUI
import CoreLocation //property that is useful to interact with MapKit framework

// Codabe allows us to get load data into the sttructure from a data file in an easier way
// This struct is related to the data that comes from the .json file
struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    // Computed image proerty to get the image name from the asset catalog
    private var imageName: String
    var image: Image {
        Image(imageName)
    }

    // Manage information about Landmark location
    private var coordinates: Coordinates
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var altitude: Double
    }



}
