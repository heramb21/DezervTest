//
//  String+Extensions.swift
//  PaytmInsiderTest
//
//  Created by Heramb Joshi on 8/5/20.
//  Copyright © 2020 Heramb Joshi. All rights reserved.
//

import Foundation

extension String {
    func trim() -> String
    {
        return self.replacingOccurrences(of: " ", with: "")
    }
}
