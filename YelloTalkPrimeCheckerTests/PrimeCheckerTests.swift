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
        
        /// Prime
        /// 1 - 100
        let primeResult = [2.isPrime(),
                           3.isPrime(),
                           5.isPrime(),
                           7.isPrime(),
                           11.isPrime(),
                           13.isPrime(),
                           17.isPrime(),
                           19.isPrime(),
                           23.isPrime()]
        /// 100 - 1000
        let primeResult2 = [113.isPrime(),
                            151.isPrime(),
                            251.isPrime(),
                            557.isPrime(),
                            883.isPrime(),
                            929.isPrime()]
        /// 1000+
        let primeResult3 = [1187.isPrime(),
                            1567.isPrime(),
                            1861.isPrime(),
                            2039.isPrime(),
                            3049.isPrime()]
        
        let totalPrimeResults = primeResult + primeResult2 + primeResult3
        
        /// Test
        for each in totalPrimeResults {
            XCTAssertTrue(each)
        }
        
        /// Not Prime
        /// 1 - 10
        let notPrimeResult = [4.isPrime(),
                              6.isPrime(),
                              8.isPrime(),
                              9.isPrime()]
        /// 10 - 100
        let notPrimeResult2 = [22.isPrime(),
                               40.isPrime(),
                               66.isPrime(),
                               91.isPrime()]
        /// 100 - 1000
        let notPrimeResult3 = [141.isPrime(),
                               170.isPrime(),
                               231.isPrime(),
                               434.isPrime(),
                               994.isPrime()]
        /// 1000+
        let notPrimeResult4 = [1332.isPrime(),
                               3493.isPrime(),
                               5401.isPrime(),
                               7979.isPrime(),
                               9998.isPrime()]
        
        let totalNotPrimeResults = notPrimeResult + notPrimeResult2 + notPrimeResult3 + notPrimeResult4
        
        /// Test
        for each in totalNotPrimeResults {
            XCTAssertFalse(each)
        }
    }
}
