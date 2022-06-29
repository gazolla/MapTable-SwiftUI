//
//  ContentView.swift
//  MapTable-SwiftUI
//
//  Created by sebastiao Gazolla Costa Junior on 29/06/22.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State var showView: Bool = true
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 37.334_900,
                                           longitude: -122.009_020),
            latitudinalMeters: 750,
            longitudinalMeters: 750
        )
    
    var body: some View {
        VStack{
            Map(coordinateRegion: $region)
                .ignoresSafeArea()
        }
        .sheet(isPresented: $showView) {
            MySheetView()
        }
    }
}

struct MySheetView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            Text("Hello from sheet!")
                .presentationDetents([.small, .medium, .large])
            //.presentationDragIndicator(.hidden)
            
            Button("Press to dismiss") {
                        dismiss()
            }
        }
    }
}

// MARK: Small Custom Detent
extension PresentationDetent{
    static let small = Self.height(100)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
