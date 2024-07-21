//
//  UserProfileViewModel.swift
//  MarketplaceApp
//
//  Created by Samir on 20.07.2024.
//

import Foundation

class UserProfileViewModel: ObservableObject {
    @Published var userName: String = ""
    @Published var email: String = ""
    
    init() {
        fetchUserData()
    }
    
    func fetchUserData() {
        let userService = UserService.shared
        userName = userService.userName
        email = userService.email
    }
}
