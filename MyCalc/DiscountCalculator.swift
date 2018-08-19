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
    var discountRatio: UInt64 = 0
    
    func getDiscountPrice() -> UInt64 {
        let percentage = Float(discountRatio) / 100
        let discountAmount = Float(price) * percentage
        
        // TODO throw exception
        return price - UInt64(discountAmount)
    }
    
    func reset() {
        price = 0
        discountRatio = 0
    }
}
