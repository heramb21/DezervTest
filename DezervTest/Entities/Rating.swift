//
//  Rating.swift
//  DezervTest
//
//  Created by Heramb on 11/12/21.
//

import Foundation
import Realm
import RealmSwift

class Rating : Object, Decodable {
    @objc dynamic var rate : Double = 0.0
    @objc dynamic var count : Int = 0

    enum CodingKeys: String, CodingKey {

        case rate = "rate"
        case count = "count"
    }

    required convenience init(from decoder: Decoder) throws {
        self.init()
        let values = try decoder.container(keyedBy: CodingKeys.self)
        rate = try (values.decodeIfPresent(Double.self, forKey: .rate) ?? 0.0)
        count = try (values.decodeIfPresent(Int.self, forKey: .count) ?? 0)
    }

}

