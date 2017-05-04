//
//  CheckoutFailureFixture.swift
//  SmartFarm
//
//  Created by Nelida Velazquez on 3/31/17.
//  Copyright © 2017 Tolkiana. All rights reserved.
//

import Foundation

@objc(CheckoutFailureFixture)
class CheckoutFailureFixture: NSObject {
    let catalog = CatalogService.shared
    let cart = CartService.shared
    
    func productsInCatalog() -> String {
        let total = catalog.totalItems(forCategoryCode: "001")
        return "\(total)"
    }
    
    func productsInCart() -> String {
        return "\(cart.totalItems())"
    }
    
    func cartTotalAmount() -> String {
        return "\(cart.totalAmount())"
    }

}
