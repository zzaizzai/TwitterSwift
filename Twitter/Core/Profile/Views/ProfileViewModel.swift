//
//  ProfileViewModel.swift
//  Twitter
//
//  Created by 小暮準才 on 2022/04/30.
//

import Foundation

class ProfileViewModel: ObservableObject {
    @Published var tweets = [Tweet]()
    private let service = TweetService()
    let user: User
    
    
    init(user: User) {
        self.user = user
        self.fetchUserTweets()
        
    }
    
    func fetchUserTweets() {
        guard let uid = user.id else { return }
        
        service.fetchTweets(forUid: user.id ?? "") { tweets in
            self.tweets = tweets
            
            for i in 0 ..< tweets.count {
                self.tweets[i].user = self.user
            }
        }
    }
}
