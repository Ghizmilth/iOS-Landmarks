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
struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    var isFeatured: Bool
    
    
    var category: Category
    enum Category: String, CaseIterable, Codable {
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }

    
    
    // Computed image proerty to get the image name from the asset catalog
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    // This adds a computed property to this fle that retunrs the feaured image if it exists
    var featureImage: Image? {
        isFeatured ? Image(imageName + "_feature"): nil
    }

    // Manage information about Landmark location
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
         CLLocationCoordinate2D(
             latitude: coordinates.latitude,
             longitude: coordinates.longitude)
     }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }



}
