//
//  Location.swift
//  SevenSummitMountainCentralJava
//
//  Created by Ricky Primayuda Putra on 18/10/24.
//

import Foundation
import MapKit

struct Location: Identifiable, Equatable {
    
    let name: String
    let mountainName: String
    let height: Int
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imagesName: [String]
    let link: String
    
    var id: String {
        name + mountainName
    }
    
    static func == (lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
    
}
