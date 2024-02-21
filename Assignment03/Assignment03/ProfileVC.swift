//
//  ProfileVC.swift
//  Assignment03
//
//  Created by Nishi Mewada on 01/02/24.
//

import UIKit

class ProfileVC: UIViewController {
    
    var user: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        print(user!)
        nameLabel.text = user?[5]
        emailLabel.text = user?[6]
        roleLabel.text = user?[7]
        incomeLabel.text = user?[4]
        eduLabel.text = user?[1]
        maritalLabel.text = user?[2]
        livingLabel.text = user?[3]
        income2Label.text = user?[4]
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var roleLabel: UILabel!
    @IBOutlet weak var incomeLabel: UILabel!
    @IBOutlet weak var eduLabel: UILabel!
    @IBOutlet weak var maritalLabel: UILabel!
    @IBOutlet weak var livingLabel: UILabel!
    @IBOutlet weak var income2Label: UILabel!
    
}
