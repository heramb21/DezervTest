//
//  ProductResponse.swift
//  DezervTest
//
//  Created by Heramb on 11/12/21.
//

import Foundation
import Realm
import RealmSwift

class ProductResponse : Object, Decodable {
     @objc dynamic var id : Int = 0
     @objc dynamic var title : String?
     @objc dynamic var price : Double = 0.0
     @objc dynamic var descriptions : String?
     @objc dynamic var category : String?
     @objc dynamic var image : String?
     @objc dynamic var rating : Rating?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case title = "title"
        case price = "price"
        case descriptions = "description"
        case category = "category"
        case image = "image"
        case rating = "rating"
    }

    convenience required init(from decoder: Decoder) throws {
        self.init()
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try (values.decodeIfPresent(Int.self, forKey: .id) ?? 0)
        title = try values.decodeIfPresent(String.self, forKey: .title)
        price = try (values.decodeIfPresent(Double.self, forKey: .price) ?? 0.0)
        descriptions = try values.decodeIfPresent(String.self, forKey: .descriptions)
        category = try values.decodeIfPresent(String.self, forKey: .category)
        image = try values.decodeIfPresent(String.self, forKey: .image)
        rating = try values.decodeIfPresent(Rating.self, forKey: .rating)
    }

}
