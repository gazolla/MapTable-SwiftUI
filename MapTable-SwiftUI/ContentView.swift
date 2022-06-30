//
//  ContentView.swift
//  MapTable-SwiftUI
//
//  Created by sebastiao Gazolla Costa Junior on 29/06/22.
//

import SwiftUI

struct ContentView: View {
    @State var showView: Bool = true
    
    var body: some View {
        MapView()
        .sheet(isPresented: $showView) {
            VenueView()
        }
    }
}


// MARK: Small Custom Detent
extension PresentationDetent{
    static let small = Self.height(250)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
