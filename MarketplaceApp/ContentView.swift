//
//  ContentView.swift
//  PatternWB
//
//  Created by Samir on 20.07.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: ProductListView(viewModel: ProductListViewModel(service: ProductService()))) {
                    Text("Product List")
                        .font(.headline)
                        .padding()
                        .background(Color.blue.opacity(0.1))
                        .cornerRadius(10)
                }
                NavigationLink(destination: CartView()) {
                    Text("Shopping Cart")
                        .font(.headline)
                        .padding()
                        .background(Color.green.opacity(0.1))
                        .cornerRadius(10)
                }
                NavigationLink(destination: UserProfileView(viewModel: UserProfileViewModel())) {
                    Text("User Profile")
                        .font(.headline)
                        .padding()
                        .background(Color.red.opacity(0.1))
                        .cornerRadius(10)
                }
            }
            .navigationTitle("Marketplace")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(CartModel())
    }
}
