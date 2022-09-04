//
//  ContentView.swift
//  Test
//
//  Created by Jacob David Cunningham on 9/3/22.
//

import SwiftUI
import RealityKit

struct ContentView : View {
    var body: some View {
        return ARViewContainer().edgesIgnoringSafeArea(.all)
    }
}

struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)

        arView.debugOptions = [
            .showPhysics,
            .showStatistics,
            .showAnchorOrigins,
            .showAnchorGeometry,
            .showWorldOrigin,
            .showFeaturePoints,
            .showSceneUnderstanding
        ];
        
        // https://stackoverflow.com/questions/64947955/how-to-disable-camera-feed-while-keeping-lidar-debug-mesh
        // https://developer.apple.com/documentation/realitykit/arview/debugoptions-swift.struct
        
        // arView.debugOptions.insert(.showSceneUnderstanding) doesn't work
        // arViewDebugOptions.showFeaturePoints()
        // arViewDebugOptions.showSceneUnderstanding()

        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
