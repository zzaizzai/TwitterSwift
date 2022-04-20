////
////  MainTabView.swift
////  Twitter
////
////  Created by 小暮準才 on 2022/04/16.
////
//
//import SwiftUI
//
//struct MainTabView: View {
//    @State private var selectedIndex = 0
//
//    var body: some View {
//        TabView(selection: $selectedIndex) {
//            FeedView()
//                .onTapGesture {
//                    self.selectedIndex = 0
//                }
//                .tabItem{
//                    Image(systemName: "house")
//                }.tag(0)
//
//            ExploreView()
//                .onTapGesture {
//                    self.selectedIndex = 1
//                }
//                .tabItem{
//                    Image(systemName: "house")
//                }.tag(1)
//
//
//            NotificationView()
//                .onTapGesture {
//                    self.selectedIndex = 2
//                }
//                .tabItem{
//                    Image(systemName: "house")
//                }.tag(2)
//
//            Messagesview()
//                .onTapGesture {
//                    self.selectedIndex = 3
//                }
//                .tabItem{
//                    Image(systemName: "house")
//                }.tag(3)
////
//
//        }
//
//    }
//}
//
//struct MainTabView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainTabView()
//    }
//}
