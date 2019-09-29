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
    
    /// View

    @IBOutlet weak var resultCircle: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    var isNavBarHidden = true
    
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
    
// MARK: - Actions
    
    @IBAction func submitButtonTapped(_ sender: Any) {
        /// Create HistoryVC
        let historyVC = HistoryViewController.shared.initiateView()
        self.navigationController?.pushViewController(historyVC, animated: true)
    }
    
}

// MARK: - Setup Navigation

extension HomeViewController {
    
    func setupNavigation() {
        self.navigationController?.setNavigationBarHidden(self.isNavBarHidden, animated: true)
    }
    
}

// MARK: - Setup Others
extension HomeViewController {
    
    func setupOthers() {
        /// Submit Button
        submitButton.rounded(by: 5)
    }
}
