//
//  ProfilePhotoSelectorView.swift
//  Twitter
//
//  Created by 小暮準才 on 2022/04/24.
//

import SwiftUI

struct ProfilePhotoSelectorView: View {
    var body: some View {
        VStack{
            AuthHeaderView(title1: "Setup your account",
                           title2: "Add a profile photo")
            
            Button {
                print("Pick image here")
            } label: {
                Image(systemName: "plus.circle")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(Color(.systemBlue))
                    .scaledToFill()
                    .frame(width: 180, height: 180)
                    .padding(.top, 44)
            }

            
            Spacer()
            
        }
        .ignoresSafeArea()
    }
}

struct ProfilePhotoSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePhotoSelectorView()
    }
}
