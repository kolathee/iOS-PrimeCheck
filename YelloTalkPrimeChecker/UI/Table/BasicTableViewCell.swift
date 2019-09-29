//
//  BasicTableViewCell.swift
//  YelloTalkPrimeChecker
//
//  Created by Kolathee Payuhawatthana on 29/9/19.
//  Copyright © 2019 Kolathee Payuhawatthana. All rights reserved.
//

import UIKit

class BasicTableViewCell: UITableViewCell {

    @IBOutlet weak var signView: UIImageView!
    @IBOutlet weak var historyLabel: UILabel!
    
    static var identifier: String { "basicTableViewCell" }
    static var nibName: String { "BasicTableViewCell" }
    
// MARK: - Init
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
