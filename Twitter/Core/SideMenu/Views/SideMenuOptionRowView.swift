//
//  SideMenuOptionRowView.swift
//  Twitter
//
//  Created by 小暮準才 on 2022/04/20.
//

import SwiftUI

struct SideMenuOptionRowView: View {
    let viewModel: SideMenuViewModel
    
    var body: some View {
        HStack(spacing: 16){
            Image(systemName: viewModel.imageName)
                .font(.headline)
                .foregroundColor(.gray)
            
            Text(viewModel.title)
                .foregroundColor(.black)
                .font(.subheadline)
            
            Spacer()

        }
        .frame(height: 40)
        .padding(.horizontal)
    }
}

struct SideMenuOptionRowView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            Spacer()
            SideMenuOptionRowView(viewModel: .profile)
            SideMenuOptionRowView(viewModel: .lists)
            SideMenuOptionRowView(viewModel: .bookmarks)
            SideMenuOptionRowView(viewModel: .logout)
            Spacer()
            
        }

    }
}
