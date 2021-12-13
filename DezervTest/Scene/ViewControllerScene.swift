//
//  ViewControllerScene.swift
//  DezervTest
//
//  Created by Heramb on 11/12/21.
//

import Bond
import Foundation
import ReactiveKit
import Realm
import RealmSwift
import UIKit


extension FetchProductsService {
    func createScene() -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TableViewController") as! TableViewController
        
        // MARK: - Bind Errors to VC
        client.errors.bind(to: vc.reactive.userErrors)
        
        // MARK: - Fetch Data and Refresh Tableview
        vc.showLoading()
        self.fetch().bind(to: vc, context: .global(qos: .background)) {(_, responseData) in
            if responseData.isEmpty {
                DispatchQueue.main.async {
                    vc.hideLoading()
                    vc.alert("Error", "No Products Found", callback: nil)
                }
            }
            else {
                DispatchQueue.main.async {
                    vc.hideLoading()
                    vc.title = "Products List"
                    vc.productsArray = responseData
                    vc.tableView.reloadData()
                }
            }
        }        
        return vc
    }
    
}


