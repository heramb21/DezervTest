//
//  TableViewController.swift
//  DezervTest
//
//  Created by Heramb on 13/12/21.
//

import UIKit

class TableViewController: UITableViewController {
    
    // MARK: Global Variables
    var productsArray: [ProductResponse]?

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "ProductTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomCell")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.productsArray?.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! ProductTableViewCell
        let currentIndexData = productsArray?[indexPath.row]
        cell.configure(selectedProduct: currentIndexData ?? ProductResponse())
        cell.selectionStyle = .none
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 187
    }
}
