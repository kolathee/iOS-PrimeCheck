//
//  + Int.swift
//  YelloTalkPrimeChecker
//
//  Created by Kolathee Payuhawatthana on 29/9/19.
//  Copyright © 2019 Kolathee Payuhawatthana. All rights reserved.
//

import Foundation

extension Int {

    func isPrime() -> Bool {
        /// Basic Check
        if self <= 1 { return false }
        if self == 2 { return true }
        if self == 3 { return true }
        if self == 5 { return true }
        if self == 7 { return true }
        if self == 11 { return true }
        if self == 13 { return true }
        
        /// and then check 3 to √n
        let endNumber = Int(Double(self).squareRoot())
        for checker in 4...endNumber {
            if self % checker == 0 { return false }
        }
        return true
    }
    
}
