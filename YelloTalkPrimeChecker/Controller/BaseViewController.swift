//
//  BaseViewController.swift
//  YelloTalkPrimeChecker
//
//  Created by Kolathee Payuhawatthana on 29/9/19.
//  Copyright © 2019 Kolathee Payuhawatthana. All rights reserved.
//

import UIKit

protocol BaseViewControllerProtocol {
    
    func initiateView() -> UIViewController
    
}

class BaseViewController: UIViewController {

    /// Overide these properties in subclasses
    var identifier: String { "" }
    var storyboardName: String { "" }
    
// MARK: - Setup
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
// MARK: - Functions
    
    func initiateView() -> UIViewController {
        let storyBoard = UIStoryboard(name: storyboardName, bundle: nil)
        return storyBoard.instantiateViewController(identifier: identifier)
    }
    
}

