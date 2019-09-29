//
//  HistoryViewController.swift
//  YelloTalkPrimeChecker
//
//  Created by Kolathee Payuhawatthana on 29/9/19.
//  Copyright © 2019 Kolathee Payuhawatthana. All rights reserved.
//

import UIKit

class HistoryViewController: BaseViewController {
    
    static let shared = HistoryViewController()
    
    override var identifier: String { "historyViewController" }
    override var storyboardName: String { "Main" }
    
    /// View
    @IBOutlet weak var tableView: UITableView!
    
    var isNavBarHidden = false
    
    /// Data
    var resultHistory: [CheckedResult] = []

// MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupHistorypage()
    }
    
    func setupHistorypage() {
        self.setupNavigation()
        self.setupTableView()
        self.setupOthers()
    }
}

// MARK: - Setup Navigation

extension HistoryViewController {
    
    func setupNavigation() {    self.navigationController?.setNavigationBarHidden(self.isNavBarHidden, animated: true)
        self.navigationItem.title = "Search History"
    }

}

// MARK: - Setup Others

extension HistoryViewController {
    
    func setupOthers() {
        /// For future implement
    }
    
}

// MARK: - Setup TableView

extension HistoryViewController {
    
    func setupTableView() {
        let basicTableViewCellNib = UINib(nibName: BasicTableViewCell.nibName, bundle: nil)
        self.tableView.register(basicTableViewCellNib, forCellReuseIdentifier: BasicTableViewCell.identifier)
    }
}

extension HistoryViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resultHistory.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: BasicTableViewCell.identifier, for: indexPath) as? BasicTableViewCell {
            let result = resultHistory[indexPath.row]
            if result.isPrime {
                cell.historyLabel.text = " \(result.number) is prime number"
                cell.signView.image = UIImage(systemName: "checkmark.circle.fill")
                return cell
            } else {
                cell.historyLabel.text = " \(result.number) is not prime number"
                cell.signView.image = UIImage(systemName: "xmark.circle.fill")
                cell.signView.tintColor = UIColor.red
                return cell
            }
        } else {
            return UITableViewCell()
        }
    }
    
}
