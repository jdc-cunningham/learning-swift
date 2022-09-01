//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Jacob David Cunningham on 8/31/22.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        VStack {
            Text("Fruit")
                .font(.title)
                .multilineTextAlignment(.center)
            HStack {
                Text("Apple")
                    .font(.subheadline)
                Spacer()
                Text("Green")
                    .font(.subheadline)
            }
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews :some View {
        LandmarkDetail()
    }}
