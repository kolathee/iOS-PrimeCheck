//
//  PrimeCheckerTests.swift
//  YelloTalkPrimeCheckerTests
//
//  Created by Kolathee Payuhawatthana on 30/9/19.
//  Copyright © 2019 Kolathee Payuhawatthana. All rights reserved.
//

import Foundation
import XCTest

@testable import YelloTalkPrimeChecker

class PrimeCheckerTests: XCTestCase {
    
    func testisPrime() {
        
        let result1 = 2.isPrime()
        let result2 = 3.isPrime()
        let result3 = 5.isPrime()
        let result4 = 7.isPrime()
        let result5 = 11.isPrime()
        let result6 = 13.isPrime()
        let result7 = 17.isPrime()
        let result8 = 19.isPrime()
        let result9 = 23.isPrime()
        
        XCTAssertTrue(result1)
        XCTAssertTrue(result2)
        XCTAssertTrue(result3)
        XCTAssertTrue(result4)
        XCTAssertTrue(result5)
        XCTAssertTrue(result6)
        XCTAssertTrue(result7)
        XCTAssertTrue(result8)
        XCTAssertTrue(result9)
    }
}
