//
//  CartView.swift
//  MarketplaceApp
//
//  Created by Samir on 20.07.2024.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cart: CartModel
    
    var body: some View {
        List {
            ForEach(cart.items) { product in
                HStack {
                    Text(product.name)
                    Spacer()
                    Text("$\(product.price, specifier: "%.2f")")
                }
                .padding()
                .background(Color.green.opacity(0.1))
                .cornerRadius(10)
            }
            .onDelete { indices in
                indices.forEach { index in
                    let product = cart.items[index]
                    cart.removeItem(product)
                }
            }
        }
        .navigationTitle("Shopping Cart")
        .toolbar {
            EditButton()
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartModel())
    }
}
