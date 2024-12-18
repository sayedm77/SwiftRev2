//
//  SmallAppViewController.swift
//  SwiftRev2
//
//  Created by sayed mansour on 18/12/2024.
//

import UIKit

class SmallAppViewController: UIViewController {

    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        img.layer.borderWidth = 1
        img.layer.cornerRadius = 25
        
        btn.layer.borderWidth = 1
        btn.layer.cornerRadius = 25
        btn.backgroundColor = .clear
        
    }
    

    @IBAction func clickTapped(_ sender: Any) {
        let urlString = "https://images.unsplash.com/5/unsplash-kitsune-4.jpg?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=bc01c83c3da0425e9baa6c7a9204af81"
        let url = URL(string: urlString)
        
        guard let data = try? Data(contentsOf: url!) else{
            return
        }
        img.image = UIImage(data: data)
    }
    
}
