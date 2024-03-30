//
//  Home.swift
//  GameStream
//
//  Created by Victor Hugo on 30/03/24.
//

import SwiftUI

struct Home: View {
  @State var searchText = ""
  
  var body: some View {
    ZStack {
      Color(red: 19/255, green: 30/255, blue: 53/255, opacity: 1.0).ignoresSafeArea()
      
      VStack{
        Image("app-logo")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(width: 250)
          .padding()
        
        HStack {
          Button(action: {print("SEARCHING")}, label: {
            Image(systemName: "magnifyingglass").foregroundStyle(searchText.isEmpty ? Color(.yellow) : Color("dark-cyan"))
          })
        }
      }
    }.toolbar(.hidden)
  }
}

#Preview {
  Home()
}
