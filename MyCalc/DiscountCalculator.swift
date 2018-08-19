//
//  DiscountCalculator.swift
//  MyCalc
//
//  Created by 北村聡士 on 2018/08/19.
//  Copyright © 2018年 satooshi. All rights reserved.
//

import Foundation

class DiscountCalculator {
    var price: UInt64 = 0
    var discountRate: UInt = 0

    var discountPrice: UInt64 {
        if isValid() {
            return price - discountAmount
        }

        return price
    }
    
    private var discountAmount: UInt64 {
        let percentage = Float(discountRate) / 100
        let amount = Float(price) * percentage
        
        return UInt64(amount)
    }
    
    func isValid() -> Bool {
        if discountRate > 100 {
            return false;
        }

        return true
    }
    
    func reset() {
        price = 0
        discountRate = 0
    }
}
