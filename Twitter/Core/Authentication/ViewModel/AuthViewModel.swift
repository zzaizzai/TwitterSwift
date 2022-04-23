//
//  AuthViewModel.swift
//  Twitter
//
//  Created by 小暮準才 on 2022/04/23.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        self.userSession = Auth.auth().currentUser
        
        print("DEBUG: User session is \(self.userSession)")
    }
    
    func login(withEmail emial: String, password: String) {
        print("DEBUG: Login with email \(emial)")
        
    }
    
    func register(withEmail emial: String, password: String, fullname:String, username: String) {
        print("DEBUG: Register with email \(emial)")
    }
}
