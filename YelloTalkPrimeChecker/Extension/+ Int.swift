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
        if self % 2 == 0 { return false }
        if self % 3 == 0 { return false }
        if (self % 5 == 0) && (self != 5) { return false }
        
        /// and then check 4 to √n
        let endNumber = (self < 16) ? (self - 1) : Int(Double(self).squareRoot())
        for checker in 4...endNumber {
            if self % checker == 0 { return false }
        }
        return true
    }
    
}
