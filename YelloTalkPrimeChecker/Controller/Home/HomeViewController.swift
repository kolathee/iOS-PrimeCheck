//
//  HomeViewController.swift
//  YelloTalkPrimeChecker
//
//  Created by Kolathee Payuhawatthana on 29/9/19.
//  Copyright © 2019 Kolathee Payuhawatthana. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {
    
    static let shared = HomeViewController()
    
    /// Identifier & Storyboard
    override var storyboardName: String { "Main" }
    override var identifier: String { "homeViewController" }
    
    /// ViewModel & Data
    let HomeVM = HomeViewModel()

// MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupHomepage()
    }
    
    func setupHomepage() {
        self.setupNavigation()
        self.setupOthers()
    }
}

// MARK: - Setup Navigation
extension HomeViewController {
    
    func setupNavigation() {
        
    }
}

// MARK: - Setup Others
extension HomeViewController {
    
    func setupOthers() {
        /// For future implement
    }
}
