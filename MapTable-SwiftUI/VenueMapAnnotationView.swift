//
//  VenueMapAnnotationView.swift
//  MapTable-SwiftUI
//
//  Created by sebastiao Gazolla Costa Junior on 03/07/22.
//

import SwiftUI

struct VenueMapAnnotationView: View {
    var body: some View {
        VStack(spacing:0){
            Circle()
                .strokeBorder(.red, lineWidth: 7)
                .background(Circle().fill(.white))
                .scaledToFit()
                .frame(width: 24, height: 24)
                
            Image(systemName: "triangle.fill")
                .resizable()
                .scaledToFit()
                .foregroundColor(.red)
                .frame(width:15, height: 15)
                .rotationEffect(Angle(degrees: 180))
                .offset(y:-6)
                .padding(.bottom)
            
        }
        
    }
}

struct VenueMapAnnotationView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            VenueMapAnnotationView()
        }
    }
}
