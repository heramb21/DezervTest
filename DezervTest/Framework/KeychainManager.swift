//
//  KeychainManager.swift
//  DezervTest
//
//  Created by Heramb on 11/12/21.
//

import Foundation
import SwiftKeychainWrapper

class KeychainManager {

    static let standard = KeychainManager()

    let keychain: KeychainWrapper
    let defaults: UserDefaults

    private init() {
        keychain = KeychainWrapper.standard
        defaults = UserDefaults.standard
    }

    func deleteAll() {
        keychain.removeAllKeys()
        let keys = defaults.dictionaryRepresentation().keys
        print("all keys \(keys)")
        let domain = Bundle.main.bundleIdentifier!
        UserDefaults.standard.removePersistentDomain(forName: domain)
        for key in Array(keys) { defaults.removeObject(forKey: key) }
        defaults.synchronize()
    }
    
    var baseURL: String {
        return "https://fakestoreapi.com/"
    }
}
