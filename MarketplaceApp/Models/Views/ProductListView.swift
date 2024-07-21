//
//  ProductListView.swift
//  MarketplaceApp
//
//  Created by Samir on 20.07.2024.
//

import SwiftUI

struct ProductListView: View {
    @ObservedObject var viewModel: ProductListViewModel
    @EnvironmentObject var cart: CartModel
    @State private var showAlert = false
    
    var body: some View {
        List(viewModel.products) { product in
            HStack {
                VStack(alignment: .leading) {
                    Text(product.name)
                        .font(.headline)
                    Text("$\(product.price, specifier: "%.2f")")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                Spacer()
                Button(action: {
                    cart.addItem(product)
                    showAlert = true
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                        showAlert = false
                    }
                }) {
                    Text("Add to Cart")
                        .padding(8)
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .scaleEffect(showAlert ? 1.1 : 1.0)
                        .animation(.easeInOut(duration: 0.2), value: showAlert)
                }
            }
            .padding()
            .background(Color.purple.opacity(0.1))
            .cornerRadius(10)
        }
        .navigationTitle("Product List")
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Added to Cart"), message: Text("Product has been added to your cart"), dismissButton: .default(Text("OK")))
        }
    }
}

struct ProductListView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListView(viewModel: ProductListViewModel(service: ProductService()))
            .environmentObject(CartModel())
    }
}
