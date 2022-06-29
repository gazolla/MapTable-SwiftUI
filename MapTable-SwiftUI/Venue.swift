//
//  Venue.swift
//  MapTable-SwiftUI
//
//  Created by sebastiao Gazolla Costa Junior on 29/06/22.
//

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
}
