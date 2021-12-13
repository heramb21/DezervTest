//
//  FetchProductsService.swift
//  DezervTest
//
//  Created by Heramb on 11/12/21.
//

import Foundation
import ReactiveKit
import Bond
import RealmSwift
import SwiftKeychainWrapper


class FetchProductsService: BaseService<[ProductResponse]> {
    
    var products: SafeSignal<[ProductResponse]>!
    
    required init() {
        super.init()
    }
    
    override func update(_ sync: [ProductResponse]?) {
        super.update(sync)
    }
    
    func fetch() -> SafeSignal<[ProductResponse]> {
        return ProductResponse.getProducts().response(using: client).debug()
    }
}


