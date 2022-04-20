//
//  FeddView.swift
//  Twitter
//
//  Created by 小暮準才 on 2022/04/16.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(0 ... 20, id: \.self ) { _ in
                    TweetRowView()
                        .padding()
                }
            }
        }
    }
}

struct FeddView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
