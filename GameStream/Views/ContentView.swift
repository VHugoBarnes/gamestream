//
//  ContentView.swift
//  GameStream
//
//  Created by Victor Hugo on 25/03/24.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationStack {
      ZStack {
        Color(red: 19/255, green: 30/255, blue: 53/255, opacity: 1.0).ignoresSafeArea()
        
        VStack {
          Image("app-logo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 250)
            .padding()
          
          LoginSignup()
          
          Spacer()
        }
      }
    }
  }
}

#Preview {
  ContentView()
}
