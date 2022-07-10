//
//  FeddView.swift
//  Twitter
//
//  Created by 小暮準才 on 2022/04/16.
//

import SwiftUI

struct FeedView: View {
    @State private var showNewTweetView = false
    @ObservedObject var viewModel = FeedViewModel() 
    
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView{
                LazyVStack{
                    ForEach(viewModel.tweets) { tweet in
                        TweetRowView(tweet: tweet)
                            .padding()
                    }
                }
            }
            
            Button {
                showNewTweetView.toggle()
            } label: {
                Image(systemName: "message.fill")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 28, height: 28)
                    .padding()
            }
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .fullScreenCover(isPresented: $showNewTweetView){
                NewTweetView()
            }

        }
//        .navigationTitle("Home")
//        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FeddView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
