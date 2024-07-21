//
//  ProductListViewModel.swift
//  MarketplaceApp
//
//  Created by Samir on 20.07.2024.
//

import Foundation

class ProductListViewModel: ObservableObject {
    @Published var products: [Product] = []
    private let service: ProductServiceProtocol
    
    init(service: ProductServiceProtocol) {
        self.service = service
        fetchProducts()
    }
    
    func fetchProducts() {
        products = service.fetchProducts()
    }
}
