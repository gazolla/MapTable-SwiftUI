//
//  Venue.swift
//  MapTable-SwiftUI
//
//  Created by sebastiao Gazolla Costa Junior on 29/06/22.
//

import MapKit

struct Position {
    var lat:Double
    var lng:Double
}

struct Venue:Identifiable {
    var id: String
    var name: String
    var address: String
    var city: String
    var category: String
    var lat: Double
    var lng: Double
    var coordinate:CLLocationCoordinate2D {
         CLLocationCoordinate2D(latitude: lat, longitude: lng)
    }
}
