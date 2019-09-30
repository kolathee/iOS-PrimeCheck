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
    @IBOutlet weak var resultButton: UIButton!
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    var isNavBarHidden = true
    
    /// ViewModel & Data
    let homeVM = HomeViewModel()

// MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupHomepage()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.setupNavigation()
    }
    
    func setupHomepage() {
        self.setupOthers()
    }
    
// MARK: - Actions
    
    @IBAction func submitButtonTapped(_ sender: Any) {
        /// Check if it is Integer
        if let num = Int(self.numberTextField.text ?? "") {
            let result = CheckedResult(number: num, isPrime: num.isPrime())
            homeVM.checkedResultList.append(result)
            changeResultView(isPrime: num.isPrime())
        /// If not show alert
        } else {
            let closeButton = UIAlertAction(title: "ok", style: .cancel, handler: nil)
            let alert = UIAlertController(title: "Wrong format",
                                          message: "Please try again",
                                          preferredStyle: .alert)
            alert.addAction(closeButton)
            self.present(alert, animated: true)
        }
    }
    
    func changeResultView(isPrime result: Bool) {
        if result == true {
            resultButton.tintColor = UIColor.blue
            resultButton.setTitle("Prime", for: .normal)
        } else {
            resultButton.tintColor = UIColor.red
            resultButton.setTitle("Not Prime", for: .normal)
        }
    }
    
    @IBAction func resultButtonTapped(_ sender: Any) {
        let historyVC = HistoryViewController.shared.initiateView() as! HistoryViewController
        historyVC.resultHistory = homeVM.checkedResultList
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
        resultButton.titleLabel?.textAlignment = .center
        resultButton.titleLabel?.numberOfLines = 0
        resultButton.titleLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
    }
    
}
