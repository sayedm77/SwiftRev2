//
//  ViewController.swift
//  SwiftRev2
//
//  Created by sayed mansour on 17/12/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func logButton(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecViewController") as! SecViewController
        vc.email = emailTxt.text ?? " sm "
        vc.pass = passTxt.text ?? "**"
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

