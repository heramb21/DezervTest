//
//  ProductResponse+Networking.swift
//  DezervTest
//
//  Created by Heramb on 11/12/21.
//

import Foundation

extension ProductResponse {
    
    public static func getProducts() -> Request<[ProductResponse], APIError> {
        return Request(
            path: "products",
            method: .get,
            resource: { resource in
                if let json = try? JSONSerialization.jsonObject(with: resource, options: .allowFragments) as? [[String: Any]] {
                    let data = try JSONSerialization.data(withJSONObject: json, options: .fragmentsAllowed)
                    let object = try JSONDecoder().decode([ProductResponse].self, from: data)
                    return object
                }
                else {
                    return []
                }
        },
            error: APIError.init,
            needsAuthorization: false
        )
    }
    
}
