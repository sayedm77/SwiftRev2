//
//  SecViewController.swift
//  SwiftRev2
//
//  Created by sayed mansour on 17/12/2024.
//

import UIKit

class SecViewController: UIViewController {

    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var passLabel: UILabel!
    var email = ""
    var pass = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        emailLabel.text = "Email : \(email)"
        passLabel.text = "Pass : \(pass)"
    
    }
    
}
