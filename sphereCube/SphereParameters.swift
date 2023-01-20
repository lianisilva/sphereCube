//
//  SphereParameters.swift
//  sphereAndCube
//
//  Created by IIT Phys 440 on 1/13/23.
//

import SwiftUI

class SphereParameters: NSObject {
    /// Sphere Area
    /// - Parameter radius: user input radius
    /// - Returns: surface area of a sphere with the given radius
    func sphereArea(radius: Double) -> Double {
        return 4.0 * Double.pi * (radius↑(2.0))
    }
    
    /// Sphere Volume
    /// - Parameter radius: user input radius
    /// - Returns: volume of a sphere with the given radius
    func sphereVolume(radius: Double) -> Double {
        return (4.0/3.0) * Double.pi * (radius↑(3.0))
    }
}
