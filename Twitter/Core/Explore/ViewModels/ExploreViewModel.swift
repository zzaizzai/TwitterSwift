//
//  ExploreViewModel.swift
//  Twitter
//
//  Created by 小暮準才 on 2022/04/30.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var users = [User]()
    @Published var searchText = ""
    
    var searchableUsers: [User] {
        if searchText.isEmpty {
            return users
        } else {
            let lowercasedQueary = searchText.lowercased()
            
            return users.filter({
                $0.username.contains(lowercasedQueary) ||
                $0.fullname.lowercased().contains(lowercasedQueary)
            })
        }
    }
    
    let service = UserService()
    
    init() {
        fetchUsers()
    }
    
    func fetchUsers() {
        service.fetchUsers { users in
            self.users = users
        }
    }
}
