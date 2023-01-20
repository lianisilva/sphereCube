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
    
    /// Initialize the variables
    @State var radius: String = ""
    
    @State var areaOfSphere = 0.0
    @State var volumeOfSphere = 0.0
    @State var areaOfCube = 0.0
    @State var volumeOfCube = 0.0
    
    /// Creates a pop-up GUI window where the user can input a radius, click the calculate button, and view the suface area and volume of a sphere with radius = input radius and the surface area and volume of a cube that circumscribes that sphere
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
    
    
    /// This is the function that assigns numbers to the variables that populate after pressing the calculate button, the actual calculations are done in seperate "parameter" classes that this function accesses
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

/// Gives a preview of the GUI in the XCode window
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


