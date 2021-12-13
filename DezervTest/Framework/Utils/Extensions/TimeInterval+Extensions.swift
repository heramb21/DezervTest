//
//  TimeInterval+Extensions.swift
//  PaytmInsiderTest
//
//  Created by Heramb Joshi on 8/6/20.
//  Copyright © 2020 Heramb Joshi. All rights reserved.
//

import Foundation

extension TimeInterval {
    var minuteSecondMS: String {
        return String(format:"%d:%02d.%03d", minute, second, millisecond)
    }
    
    var minuteSecond: String {
        return String(format:"%d:%02d", minute, second)
    }
    
    var minute: Int {
        return Int((self/60).truncatingRemainder(dividingBy: 60))
    }
    
    var second: Int {
        return Int(truncatingRemainder(dividingBy: 60))
    }
    
    var millisecond: Int {
        return Int((self*1000).truncatingRemainder(dividingBy: 1000))
    }
    
    func formatSecondsToString(_ seconds: TimeInterval) -> String {
        if seconds.isNaN {
            return "00:00"
        }
        let Min = Int(seconds / 60)
        let Sec = Int(seconds.truncatingRemainder(dividingBy: 60))
        return String(format: "%02d:%02d", Min, Sec)
    }
}

extension Int {
    var msToSeconds: Double {
        return Double(self) / 1000
    }
}
