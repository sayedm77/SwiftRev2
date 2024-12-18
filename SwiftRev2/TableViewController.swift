//
//  TableViewController.swift
//  SwiftRev2
//
//  Created by sayed mansour on 18/12/2024.
//

import UIKit

class TableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var data = [TableData(setionNsme: "teams", sectionItems: ["real madrid","barca","masry","liverpool","city","real madrid","barca","masry","liverpool","city","real madrid","barca","masry","liverpool","city"]),
                TableData(setionNsme: "vegetables", sectionItems: ["potatp","tomato","onion","carots","green","chilles","potatp","tomato","onion","carots","green","chilles","potatp","tomato","onion","carots","green","chilles"]),
                TableData(setionNsme: "animals", sectionItems: ["cat","dog","lion","rats","girafe","wolf","cat","dog","lion","rats","girafe","wolf","cat","dog","lion","rats","girafe","wolf"])
                
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.sectionHeaderTopPadding = 0
    }


}

extension TableViewController: UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return data[section].setionNsme
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].sectionItems.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        let index =  data[indexPath.section].sectionItems[indexPath.row]
        cell?.textLabel?.text = index
        return cell!
    }
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .red
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        view.backgroundColor = .gray
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(data[indexPath.section].sectionItems[indexPath.row]!) is tapped ......")
    }
}
