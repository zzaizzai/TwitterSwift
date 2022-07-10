//
//  MainTabView.swift
//  Twitter
//
//  Created by 小暮準才 on 2022/04/17.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex = 0
    
    var body: some View {
        TabView() {
            FeedView()
                .onTapGesture {
                    self.selectedIndex = 0
                    
                }
                .tabItem{
                    Image(systemName: "house")
                    
                }.tag(0)
                .navigationBarTitle( "Home")
                .navigationBarTitleDisplayMode(.inline)

                
            
            ExploreView()
                .onTapGesture {
                    self.selectedIndex = 1
                }
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }.tag(1)
                .navigationBarTitle( "Explore")
                .navigationBarTitleDisplayMode(.inline)

            
            NotificationView()
                .onTapGesture {
                    self.selectedIndex = 2
                }
                .tabItem{
                    Image(systemName: "bell")
                }.tag(2)
                .navigationBarTitle( "Notification")
                .navigationBarTitleDisplayMode(.inline)

            
            MessageView()
                .onTapGesture {
                    self.selectedIndex = 3
                }
                .tabItem{
                    Image(systemName: "envelope")
                }.tag(3)
                .navigationBarTitle( "Message")
                .navigationBarTitleDisplayMode(.inline)

        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
