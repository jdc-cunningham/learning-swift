//
//  ContentView.swift
//  Landmarks
//
//  Created by Jacob David Cunningham on 8/27/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
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
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
