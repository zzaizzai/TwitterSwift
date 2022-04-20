//
//  UserRowView.swift
//  Twitter
//
//  Created by 小暮準才 on 2022/04/18.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack(spacing: 12){
            Circle()
                .frame(width: 48,  height: 48)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("joker")
                    .font(.subheadline).bold()
                    .foregroundColor(.black)
                
                Text("Health Lsdf")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
            }
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
