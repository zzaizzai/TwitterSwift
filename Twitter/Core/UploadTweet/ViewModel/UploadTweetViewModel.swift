//
//  UploadTweetViewModel.swift
//  Twitter
//
//  Created by 小暮準才 on 2022/04/30.
//

import Foundation

class UploadTweetViewModel: ObservableObject {
    @Published var didUploadTweet = false
    
    let service = TweetService()
    
    func uploadTweet(withCaption caption: String) {
        service.uploadTweet(caption: caption ) { success in
            if success {
                //dismiss screen somehow
                self.didUploadTweet = true
                
            } else {
                // show error message to user..
            }
        }
    }
    
}
