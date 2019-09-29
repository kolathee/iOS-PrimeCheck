//
//  + UIButton.swift
//  YelloTalkPrimeChecker
//
//  Created by Kolathee Payuhawatthana on 29/9/19.
//  Copyright © 2019 Kolathee Payuhawatthana. All rights reserved.
//

import UIKit

extension UIButton {
    
    func rounded(by radius: Double) -> Void {
        self.layer.cornerRadius = CGFloat(radius)
        self.clipsToBounds = true
    }
    
}
