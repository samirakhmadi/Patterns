//
//  CartModel.swift
//  MarketplaceApp
//
//  Created by Samir on 20.07.2024.
//

import Foundation

class CartModel: ObservableObject {
    @Published var items: [Product] = []
    
    func addItem(_ product: Product) {
        items.append(product)
    }
    
    func removeItem(_ product: Product) {
        items.removeAll { $0.id == product.id }
    }
}


