//
//  UserService.swift
//  MarketplaceApp
//
//  Created by Samir on 20.07.2024.
//

import Foundation

class UserService {
    static let shared = UserService()
    
    private init() {}
    
    var userName: String = "John Doe"
    var email: String = "john.doe@example.com"
}

