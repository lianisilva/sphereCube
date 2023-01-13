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
    
    
    func testSurfaceAreaOfSphere() throws {
        var sphereParameters = SphereParameters()
        var areaOfSphere = sphereParameters.sphereArea(radius: 1.0)
        var expectedValue = 4.0*Double.pi
        XCTAssertEqual(areaOfSphere, expectedValue, accuracy: 1e-14)
        
        areaOfSphere = sphereParameters.sphereArea(radius: 5.0)
        expectedValue = 100.0*Double.pi
        XCTAssertEqual(areaOfSphere, expectedValue, accuracy: 1e-14)
    }
    
    func testVolumeOfSphere() throws {
        var sphereParameters = SphereParameters()
        var volumeOfSphere = sphereParameters.sphereArea(radius: 1.0)
        var expectedValue = 
        XCTAssertEqual(volumeOfSphere, expectedValue, accuracy: 1e-14)
        
        volumeOfSphere = sphereParameters.sphereArea(radius: 5.0)
        expectedValue =
        XCTAssertEqual(volumeOfSphere, expectedValue, accuracy: 1e-14)
    }
    

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
