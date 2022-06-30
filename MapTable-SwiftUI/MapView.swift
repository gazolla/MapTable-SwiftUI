//
//  MapView.swift
//  MapTable-SwiftUI
//
//  Created by sebastiao Gazolla Costa Junior on 29/06/22.
//

import SwiftUI
import MapKit

class InitialRegion {
    static let instance = InitialRegion()
    @Published var region = MKCoordinateRegion()
    
    init(){
        load()
    }
    
    func load(){
        region = adjustRegion(37.3175,aLongitude: -122.0419)
    }
    
    
    func adjustRegion(_ aLatitude:CLLocationDegrees, aLongitude: CLLocationDegrees, latDelta:CLLocationDegrees = 1.0, longDelta:CLLocationDegrees = 1.0) -> MKCoordinateRegion{
        let latitude = aLatitude
        let longitude = aLongitude
        
        let aSpan = MKCoordinateSpan(latitudeDelta: latDelta,longitudeDelta: longDelta)
        let Center = CLLocationCoordinate2DMake(latitude, longitude)
        let region = MKCoordinateRegion(center: Center, span: aSpan)
        
        return region
    }
}


struct MapView: View {
    @State private var region:MKCoordinateRegion = InitialRegion.instance.region
    var body: some View {
        Map(coordinateRegion:$region)
            .ignoresSafeArea()
    }
    

       
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
