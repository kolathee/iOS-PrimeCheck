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

// MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

// MARK: - Setup TableView

extension HistoryViewController: UITableViewDelegate {
    
}

extension HistoryViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    }
    
    
}
