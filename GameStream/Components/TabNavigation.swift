//
//  Home.swift
//  GameStream
//
//  Created by Victor Hugo on 30/03/24.
//

import SwiftUI

struct TabNavigation: View {
  var body: some View {
    @State var selectedTag: Int = 2;
    
    TabView(selection: $selectedTag) {
      Profile()
        .tabItem {
          VStack {
            Image(systemName: "person")
            
            Text("Profile")
          }
        }
        .tag(0)
      
      Games()
        .tabItem {
          VStack {
            Image(systemName: "gamecontroller")
            
            Text("Games")
          }
        }
        .tag(1)
      
      Home()
        .tabItem {
          VStack {
            Image(systemName: "house")
            
            Text("Home")
          }
        }
        .tag(2)
      
      Favorites()
        .tabItem {
          VStack {
            Image(systemName: "heart")
            
            Text("Favorites")
          }
        }
        .tag(3)
    }.navigationBarBackButtonHidden(true)
      .tint(.white)
  }
  
  init() {
    UITabBar.appearance().backgroundColor = UIColor(Color("tab-bar-color"))
    UITabBar.appearance().unselectedItemTintColor = UIColor.gray
    UITabBar.appearance().isTranslucent = true
  }
}

#Preview {
  TabNavigation()
}
