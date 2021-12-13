//
//  Date+Extension.swift
//  PaytmInsiderTest
//
//  Created by Heramb Joshi on 8/3/20.
//  Copyright © 2020 Heramb Joshi. All rights reserved.
//

import Foundation

extension Date {
    
    public static func getISODateWithString(_ stringDate: String) -> Date? {
        let isoFormatter = DateFormatter()
        isoFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss'Z'"
        isoFormatter.locale = Locale(identifier: "en_US_POSIX")
        return isoFormatter.date(from: stringDate)
    }
    
    public func getStringyyyyFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy"
        return dateFormatter.string(from: self)
    }
    
    public func getStringMMMddyyyyFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM dd, yyyy"
        return dateFormatter.string(from: self)
    }
    
    static var dateDecodingFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss'Z'"
        formatter.locale = Locale(identifier: "en_US_POSIX")
        return formatter
    }
    
}
