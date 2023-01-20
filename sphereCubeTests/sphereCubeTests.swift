//
//  sphereCubeTests.swift
//  sphereCubeTests
//
//  Created by IIT Phys 440 on 1/13/23.
//

import XCTest

final class sphereCubeTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }
    
    /// Tests the sphere surface area calculation with a test radius of 1.0 and 5.0
    func testSurfaceAreaOfSphere() throws {
        var sphereParameters = SphereParameters()
        var areaOfSphere = sphereParameters.sphereArea(radius: 1.0)
        var expectedValue = 4.0 * Double.pi
        XCTAssertEqual(areaOfSphere, expectedValue, accuracy: 1e-14)
        
        areaOfSphere = sphereParameters.sphereArea(radius: 5.0)
        expectedValue = 100.0 * Double.pi
        XCTAssertEqual(areaOfSphere, expectedValue, accuracy: 1e-14)
    }
    
    /// Tests the sphere volume calculation with a test radius of 1.0 and 5.0
    func testVolumeOfSphere() throws {
        var sphereParameters = SphereParameters()
        var volumeOfSphere = sphereParameters.sphereVolume(radius: 1.0)
        var expectedValue = (4.0/3.0) * Double.pi
        XCTAssertEqual(volumeOfSphere, expectedValue, accuracy: 1e-14)
        
        volumeOfSphere = sphereParameters.sphereVolume(radius: 5.0)
        expectedValue = (4.0/3.0) * Double.pi * 125.0
        XCTAssertEqual(volumeOfSphere, expectedValue, accuracy: 1e-14)
    }
    
    /// Tests the cube surface area calculation with a test radius of 1.0 and 5.0
    func testSurfaceAreaOfCube() throws {
        var cubeParameters = CubeParameters()
        var areaOfCube = cubeParameters.cubeArea(radius: 1.0)
        var expectedValue = 6.0 * 4.0
        XCTAssertEqual(areaOfCube, expectedValue, accuracy: 1e-14)
        
        areaOfCube = cubeParameters.cubeArea(radius: 5.0)
        expectedValue = 6.0 * 100.0
        XCTAssertEqual(areaOfCube, expectedValue, accuracy: 1e-14)
    }
    
    /// Tests the cube volume calculation with a test radius of 1.0 and 5.0
    func testVolumeOfCube() throws {
        var cubeParameters = CubeParameters()
        var volumeOfCube = cubeParameters.cubeVolume(radius: 1.0)
        var expectedValue = 8.0
        XCTAssertEqual(volumeOfCube, expectedValue, accuracy: 1e-14)
        
        volumeOfCube = cubeParameters.cubeVolume(radius: 5.0)
        expectedValue = 1000.0
        XCTAssertEqual(volumeOfCube, expectedValue, accuracy: 1e-14)
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
