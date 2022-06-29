//
//  VenueDataService.swift
//  MapTable-SwiftUI
//
//  Created by sebastiao Gazolla Costa Junior on 29/06/22.
//

import Foundation

class VenueDataService {
    static let instance = VenueDataService()
    
    @Published var venues:[Venue] = []
    
    private init(){
        load()
    }
    
    func load() {
        
        let v = Venue(id:"1", name: "Whole Foods Market", address: "20955 Stevens Creek Blvd", city: "Cupertino", category: "Grocery Store", lat: 37.323551, lng: -122.039653)
        let v2 = Venue(id:"2", name: "Buffalo Wild Wings Grill & Bar", address: "1620 Saratoga Ave", city: "San Jose", category: "American Restaurant", lat: 37.2979039, lng: -121.988112)
        let v3 = Venue(id:"3", name: "Bierhaus", address: "383 Castro St", city: "Mountain View", category: "Gastropub", lat: 37.3524382, lng: -121.9582429)
        let v4 = Venue(id:"4", name: "Singularity University", address: "Building 20 S. Akron Rd.", city: "Moffett Field", category: "University", lat: 37.3996033, lng:-122.0784488)
        
        let v5 = Venue(id:"5", name: "Menlo Country Club", address: "", city: "Woodside", category: "Country Club", lat: 37.4823348, lng: -122.2406688)
        let v6 = Venue(id:"6", name: "Denny's", address: "1015 Blossom Hill Rd", city: "San Jose", category: "American Restaurant", lat: 37.2384776, lng: -121.8007709)
        let v7 = Venue(id:"7", name: "Refuge", address: "963 Laurel St", city: "San Carlos", category: "Restaurant", lat: 37.5041949, lng: -122.2695079)
        
        venues = [v, v2, v3, v4 , v5, v6, v7]
    }

}
