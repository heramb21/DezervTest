//
//  DezervTestClient.swift
//  DezervTest
//
//  Created by Heramb on 11/12/21.
//

import Foundation

public class DezervTestClient: Client {
    public init() throws {
        super.init(baseURL: KeychainManager.standard.baseURL)
        defaultHeaders = ["Content-Type": "application/json",
        "Accept": "application/json"]
    }
}
