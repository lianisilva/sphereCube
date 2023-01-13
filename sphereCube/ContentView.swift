//
//  ContentView.swift
//  sphereAndCube
//
//  Created by IIT Phys 440 on 1/13/23.
//

import SwiftUI
//import SphereParameters

struct ContentView: View {
    /*
     var body: some View {
     VStack {
     Image(systemName: "globe")
     .imageScale(.large)
     .foregroundColor(.accentColor)
     Text("Hello, world!")
     }
     .padding()
     */
    
    @State var radius: String = ""
    
    @State var areaOfSphere = 0.0
    @State var volumeOfSphere = 0.0
    @State var areaOfCube = 0.0
    @State var volumeOfCube = 0.0
    
    var body: some View {
        VStack {
            Text("Enter the radius:")
            TextField("Radius", text: $radius)
            
                VStack {
                    Text("Sphere Area: \(String(format: "%.2f", areaOfSphere))")
                    Text("Sphere Volume: \(String(format: "%.2f", volumeOfSphere))")
                    Text("Cube Area: \(String(format: "%.2f", areaOfCube))")
                    Text("Cube Volume: \(String(format: "%.2f", volumeOfCube))")
                    
                    Button("Calculate", action: self.calculate)
                }
        
        }
    }
    
    
    func calculate(){
        if let r = Double(radius) {
            var sphereParameters = SphereParameters()
            var cubeParameters = CubeParameters()
            areaOfSphere = sphereParameters.sphereArea(radius: r)
            volumeOfSphere = sphereParameters.sphereVolume(radius: r)
            areaOfCube = cubeParameters.cubeArea(radius: r)
            volumeOfCube = cubeParameters.cubeVolume(radius: r)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


