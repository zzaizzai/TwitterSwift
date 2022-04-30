//
//  Tweet.swift
//  Twitter
//
//  Created by 小暮準才 on 2022/04/30.
//

import FirebaseFirestoreSwift
import Firebase

struct Tweet: Identifiable, Decodable {
    @DocumentID var id: String?
    let caption: String
    let timestamp: Timestamp
    let uid: String
    var likes: Int
    
    var user: User?
    
}
