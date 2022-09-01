//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Jacob David Cunningham on 8/31/22.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark

    var body: some View {
        ScrollView {
            Text("Fruit")
                .font(.title)
                .multilineTextAlignment(.center)
            
            CircleImage(image: landmark.image)
                .padding(.bottom, 30)
                .padding(.top, 30)
            
            HStack {
                Text("Apple")
                    .font(.subheadline)
                Spacer()
                Text("Green")
                    .font(.subheadline)
            }
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews :some View {
        LandmarkDetail(landmark: landmarks[0])
    }
    // preview other devices
    // ForEach(["iPhone SE (2nd generation)", "iphoneXS Max"], id: \.self) { deviceName in LandmarkList()
    //      .previewDevice(PreviewDevice(rawValue: deviceName))
    //      .previewDisplayName(deviceName)
}
