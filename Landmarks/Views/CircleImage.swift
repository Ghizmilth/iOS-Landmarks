//
//  CircleImage.swift
//  Landmarks
//
//  Created by Hidaner Ferrer on 1/14/21.
//

import SwiftUI

struct CircleImage: View {
    
    // This is added to allow dinamyc changes to our image view circle
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
