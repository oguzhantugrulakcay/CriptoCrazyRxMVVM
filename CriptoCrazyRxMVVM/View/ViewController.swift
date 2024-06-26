//
//  ViewController.swift
//  CriptoCrazyRxMVVM
//
//  Created by Oğuzhantuğrul Akçay on 11.06.2024.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate=self
        tableView.dataSource=self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=UITableViewCell()
        var content=cell.defaultContentConfiguration()
        content.text="Crypto Currency"
        content.secondaryText="Crypto Price"
        cell.contentConfiguration=content
        return cell
    }


}

