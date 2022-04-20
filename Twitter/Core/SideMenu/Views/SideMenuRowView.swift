//
//  SideMenuRowView.swift
//  Twitter
//
//  Created by 小暮準才 on 2022/04/18.
//

import SwiftUI

struct SideMenuRowView: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 32) {
            VStack(alignment: .leading) {
                Circle()
                    .frame(width: 48, height: 48)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Brue Wayne")
                        .font(.headline)
                    
                    Text("@batman")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                UserStateView()
                    .padding(.vertical)
                
            }
            .padding(.leading)
            
            ForEach(SideMenuViewModel.allCases, id: \.rawValue) { option in
                HStack(spacing: 16){
                    Image(systemName: option.imageName)
                        .font(.headline)
                        .foregroundColor(.gray)
                    
                    Text(option.title)
                        .font(.subheadline)
                    
                    Spacer()

                }
                .frame(height: 40)
                .padding(.horizontal)
                
            }
            .padding(.vertical, 4)
            Spacer()
        }
    }
}

struct SideMenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuRowView()
    }
}
