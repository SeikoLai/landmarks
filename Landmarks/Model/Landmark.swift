//
//  Landmark.swift
//  Landmarks
//
//  Created by Sam Lai on 2022/2/2.
//

import Foundation
import SwiftUI
import CoreLocation

/**
 Adding Codable conformance makes it easier to move data between the structure and a data file.
 You’ll rely on the Decodable component of the Codable protocol later in this section to read data from file.
 */
struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    /**
     You make the property private because users of the Landmarks structure care only about the image itself.
     */
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    /**
     You mark this property as private because you’ll use it only to create a public computed property in the next step.
     */
    private var coordinates: Coordinates
    /**
     Compute a locationCoordinate property that’s useful for interacting with the MapKit framework.
     */
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
