//
//  User.swift
//  Twitter
//
//  Created by 小暮準才 on 2022/04/25.
//

import FirebaseFirestoreSwift

struct User: Identifiable, Decodable {
    @DocumentID var id: String?
    let username: String
    let fullname: String
    let profileImageUrl: String
    let email: String
}
