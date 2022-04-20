//
//  TweetRowView.swift
//  Twitter
//
//  Created by 小暮準才 on 2022/04/16.


import SwiftUI

struct TweetRowView: View {
    var body: some View {
        VStack(alignment: .leading){

            // profile image and user info and tweet
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))

                // user info and tweet caption
                VStack(alignment: .leading, spacing: 4) {
                    // user info
                    HStack{
                        Text("Bruce Wayne")
                            .font(.subheadline).bold()

                        Text("@batim")
                            .foregroundColor(.gray)
                            .font(.caption)
                        Text("2s")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }

                    // caption
                    Text("I belive in Harvey Dent")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)


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
                    //
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
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

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
