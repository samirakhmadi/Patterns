//
//  PatternWBApp.swift
//  PatternWB
//
//  Created by Samir on 20.07.2024.
//

import SwiftUI

@main
struct MarketplaceAppApp: App {
    @StateObject private var cartModel = CartModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(cartModel)
        }
    }
}
