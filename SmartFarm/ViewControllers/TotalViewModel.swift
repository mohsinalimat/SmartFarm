//
//  TotalViewModel.swift
//  SmartFarm
//
//  Created by Nelida Velazquez on 5/6/17.
//  Copyright © 2017 Tolkiana. All rights reserved.
//

import Foundation

struct TotalViewModel {
    let cart = CartService.shared
    
    var total: String {
        return "$\(cart.totalAmount())"
    }
    
    var totalItems: String {
        let totalItems = cart.totalItems()
        
        if totalItems > 1 {
            return "Total (\(totalItems) item):"
        }
        return "Total (\(totalItems) items):"
    }
}
