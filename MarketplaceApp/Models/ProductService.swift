//
//  ProductService.swift
//  MarketplaceApp
//
//  Created by Samir on 20.07.2024.
//

import Foundation

protocol ProductServiceProtocol {
    func fetchProducts() -> [Product]
}

class ProductService: ProductServiceProtocol {
    func fetchProducts() -> [Product] {
        return [
            Product(id: UUID(), name: "Product 1", price: 29.99),
            Product(id: UUID(), name: "Product 2", price: 49.99),
            Product(id: UUID(), name: "Product 3", price: 19.99)
        ]
    }
}


