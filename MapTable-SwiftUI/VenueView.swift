//
//  VenueView.swift
//  MapTable-SwiftUI
//
//  Created by sebastiao Gazolla Costa Junior on 29/06/22.
//

import SwiftUI
import Combine

class VenueViewModel: ObservableObject {
    @Published var venues:[Venue] = []
    let venueService = VenueDataService.instance
    var cancellables = Set<AnyCancellable>()
    
    init(){
        load()
    }
    
    func load(){
        venueService.$venues.sink { [weak self] (returnedVenues) in
            self?.venues = returnedVenues
        }
        .store(in: &cancellables)
    }
}

struct VenueView: View {
    @Environment(\.dismiss) var dismiss
    @StateObject var vvm = VenueViewModel()
    
    var body: some View {
        VStack{
            NavigationStack{
                List(vvm.venues){venue in
                    Text(venue.name)
                }
            }
                .presentationDetents([.small, .medium, .large])
             
        }
    }}

struct VenueView_Previews: PreviewProvider {
    static var previews: some View {
        VenueView()
    }
}
