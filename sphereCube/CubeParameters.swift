//
//  cubeParameters.swift
//  sphereAndCube
//
//  Created by IIT Phys 440 on 1/13/23.
//

import SwiftUI

class CubeParameters: NSObject {
    /// Cube Area
    /// - Parameter radius: user input radius
    /// - Returns: surface area of a cube with the given radius
    func cubeArea(radius: Double) -> Double{
        return 6*((radius * 2.0)↑(2.0))
    }
    
    /// Cube Volume
    /// - Parameter radius: user input radius
    /// - Returns: volume of a cube with the given radius
    func cubeVolume(radius: Double) -> Double{
        return (radius * 2.0)↑(3.0)
    }
}
