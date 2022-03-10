//
//  LandmarkList.swift
//  LandmarkApp
//
//  Created by Nathaniel Whittington on 3/10/22.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        
        NavigationView {
            
            List(landmarks, id: \.id) { landmark in
                NavigationLink {
                    LandmarkDetails(landmark: landmark)
                }label: {
                    LandmarkRow(landmark: landmark)
                }
            }.navigationTitle("Landmark List")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
