//
//  Model.swift
//  LandmarkApp
//
//  Created by Nathaniel Whittington on 3/10/22.
//

import SwiftUI
import Foundation

struct Landmark: Hashable, Codable {
    var id: Int?
    var name: String?
    var park: String?
    var state: String?
    var description: String?
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    private var coordinates: Coordinates?
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
