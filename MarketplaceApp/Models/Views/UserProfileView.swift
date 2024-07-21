//
//  UserProfileView.swift
//  MarketplaceApp
//
//  Created by Samir on 20.07.2024.
//

import SwiftUI

struct UserProfileView: View {
    @ObservedObject var viewModel: UserProfileViewModel
    
    var body: some View {
        VStack {
            Text("User Profile")
                .font(.largeTitle)
                .padding()
            
            Text("Name: \(viewModel.userName)")
                .font(.title2)
                .padding()
            
            Text("Email: \(viewModel.email)")
                .font(.title2)
                .padding()
        }
        .padding()
        .navigationTitle("User Profile")
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView(viewModel: UserProfileViewModel())
    }
}


