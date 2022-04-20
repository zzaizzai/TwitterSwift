//
//  UserStateView.swift
//  Twitter
//
//  Created by 小暮準才 on 2022/04/18.
//

import SwiftUI

struct UserStateView: View {
    var body: some View {
        
        HStack(spacing: 24) {
            HStack {
                Text("333")
                    .font(.subheadline)
                    .bold()
                
                Text("Following")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            HStack {
                Text("6.0M")
                    .font(.subheadline)
                    .bold()
                
                Text("Followers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct UserStateView_Previews: PreviewProvider {
    static var previews: some View {
        UserStateView()
    }
}
