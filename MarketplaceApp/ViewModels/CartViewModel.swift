//
//  CartViewModel.swift
//  MarketplaceApp
//
//  Created by Samir on 20.07.2024.
//

import Foundation

class CartViewModel: ObservableObject {
    @Published var cart = CartModel()
}

