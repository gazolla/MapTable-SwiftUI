//
//  VenueView.swift
//  MapTable-SwiftUI
//
//  Created by sebastiao Gazolla Costa Junior on 29/06/22.
//

import SwiftUI

struct VenueView: View {
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
    }}

struct VenueView_Previews: PreviewProvider {
    static var previews: some View {
        VenueView()
    }
}
