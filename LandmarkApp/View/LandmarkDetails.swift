//
//  LandmarkDetails.swift
//  MovieDB
//
//  Created by Nathaniel on 10/03/22.
//

import SwiftUI

struct LandmarkDetails: View {
    var landmark: Landmark
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
        
            CircleImage(image: landmark.image)
                .offset(x: 0, y: -130)
                .padding(.bottom, -130)
                
            VStack(alignment: .leading) {
                Text(landmark.name ?? "")
                              .font(.title)

                          HStack {
                              Text(landmark.park ?? "")
                              Spacer()
                              Text(landmark.state ?? "")
                          }
                          .font(.subheadline)
                          .foregroundColor(.secondary)
                        Divider()
                Text("About \(landmark.name ?? "")")
                                    .font(.title2)
                Text(landmark.description ?? "")
                        Spacer()
                      }
            .padding()
            
            Spacer()
        }
    }
}

struct LandmarkDetails_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetails(landmark: landmarks[0])
    }
}
