//
//  TweetRowView.swift
//  Twitter
//
//  Created by 小暮準才 on 2022/04/16.


import SwiftUI
import Kingfisher


struct TweetRowView: View {
    @ObservedObject var viewModel: TweetRowViewModel
    
    init(tweet: Tweet){
        self.viewModel = TweetRowViewModel(tweet: tweet)
    }
    
    var body: some View {
        VStack(alignment: .leading){

            // profile image and user info and tweet
            if let user = viewModel.tweet.user {
                HStack(alignment: .top, spacing: 12) {
                    KFImage(URL(string: user.profileImageUrl))
                        .resizable()
                        .frame(width: 56, height: 56)
                        .clipShape(Circle())
                        .scaledToFill()

                    // user info and tweet caption
                    VStack(alignment: .leading, spacing: 4) {
                        // user info
                        HStack{
                            Text(user.fullname)
                                .font(.subheadline).bold()

                            Text("@\(user.username)")
                                .foregroundColor(.gray)
                                .font(.caption)
                            Text("2s")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }

                        // caption
                        Text(viewModel.tweet.caption)
                            .font(.subheadline)
                            .multilineTextAlignment(.leading)


                    }
                }
            }

//            action; buttons

            HStack {

                Button {
                    //
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }

                Spacer()
//
                Button {
                    //
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }

                Spacer()

                Button {
                    viewModel.tweet.didLike ?? false ? viewModel.unlikeTweet() : viewModel.likeTweet()
                } label: {
                    Image(systemName: viewModel.tweet.didLike ?? false ? "heart.fill" : "heart")
                        .font(.subheadline)
                        .foregroundColor(viewModel.tweet.didLike ?? false ? .red : .gray)
                }

                Spacer()

                Button {
                    //
                } label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                }

            }
            .padding()
            .foregroundColor(.gray)

            Divider()
        }
    }
}

//struct TweetRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        TweetRowView()
//    }
//}
