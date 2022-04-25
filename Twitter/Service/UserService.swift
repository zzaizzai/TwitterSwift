//
//  UserService.swift
//  Twitter
//
//  Created by 小暮準才 on 2022/04/24.
//

import Firebase
import FirebaseFirestoreSwift

struct UserService {
    func fetchUser(withUid uid: String, completion: @escaping(User) -> Void ) {
        Firestore.firestore().collection("users")
            .document(uid)
            .getDocument { snapshot , _ in
                guard let snapshot = snapshot else { return }
                
                guard let user = try? snapshot.data(as: User.self) else { return }
                completion(user)
                
            }
    }
}
