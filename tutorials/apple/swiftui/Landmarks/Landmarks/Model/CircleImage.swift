//
//  CircleImage.swift
//  Landmarks
//
//  Created by Jacob David Cunningham on 8/27/22.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("TLR")
            .resizable()
            .clipShape(Circle())
            .frame(width: 200.0, height: 200.0) // mod for massive image
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
