//
//  TweetRowViewModel.swift
//  Twitter
//
//  Created by 小暮準才 on 2022/04/30.
//

import Foundation

class TweetRowViewModel: ObservableObject {
    @Published var tweet: Tweet
    private let service = TweetService()
    
    init(tweet: Tweet) {
        self.tweet = tweet
        checkIfUserLikedTweet()
        
    }
    
    func likeTweet() {
        service.likeTweet(tweet) {
            self.tweet.didLike = true
            
        }
    }
    func unlikeTweet() {
        service.unlikeTweet(tweet) {
            self.tweet.didLike = false
        }
        
    }
    
    func checkIfUserLikedTweet() {
        service.checkIfUserLikedTweet(tweet) { didLike in
            if didLike {
                self.tweet.didLike = true
            }
        }
    }
}
