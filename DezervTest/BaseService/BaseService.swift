//
//  BaseService.swift
//  DezervTest
//
//  Created by Heramb on 11/12/21.
//

import Foundation
import ReactiveKit
import Bond

class BaseService<T>: NSObject {

    var _object = Observable<T?>(nil)

    var client: SafeClient

    var object: SafeSignal<T?> {
        return _object.toSignal()
    }

    required override init() {
        client = SafeClient(wrapping: Client(baseURL: KeychainManager.standard.baseURL))
        super.init()
    }

    convenience init(client: SafeClient) {
        self.init()
        self.client = client
    }

    func update(_ object: T?) {
        _object.value = object
    }
}


