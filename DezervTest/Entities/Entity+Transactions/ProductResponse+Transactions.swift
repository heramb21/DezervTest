//
//  ProductResponse+Transactions.swift
//  DezervTest
//
//  Created by Heramb on 12/12/21.
//

import Foundation
import Realm
import RealmSwift
import ReactiveKit

extension ProductResponse {
    
    func saveOrUpdate() {
        let realm = try! Realm()
        try! realm.write {
            realm.add(self)
        }
    }
    
    func deleteAll() {
        let realm = try! Realm()
        try! realm.write {
          realm.deleteAll()
        }
    }
    
}
