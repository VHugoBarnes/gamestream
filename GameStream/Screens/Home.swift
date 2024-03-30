//
//  Home.swift
//  GameStream
//
//  Created by Victor Hugo on 30/03/24.
//

import SwiftUI
import AVKit

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
        
        // SEARCH
        HStack {
          Button(action: search, label: {
            Image(systemName: "magnifyingglass").foregroundStyle(searchText.isEmpty ? Color(.yellow) : Color("dark-cyan"))
          })
          
          TextField(
            text: $searchText,
            label: {
              Text("Search a Video").foregroundStyle(Color("light-gray"))
            }
          )
          .foregroundStyle(.white)
        }.padding([.top, .leading, .bottom], 11.0)
          .background(Color("blue-gray"))
          .clipShape(Capsule())
        
        ScrollView(showsIndicators: false) {
          SubModuloHome()
        }.padding(.vertical)
      }.padding(.horizontal, 18.0)
    }.toolbar(.hidden)
  }
  
  func search() {
    print("SEARCHING...")
  }
}

struct SubModuloHome:View {
  @State var url = "https://cdn.cloudflare.steamstatic.com/steam/apps/256658589/movie480.mp4"
  @State var isPlayerActive = false
  
  let urlVideos:[String] = ["https://cdn.cloudflare.steamstatic.com/steam/apps/256658589/movie480.mp4","https://cdn.cloudflare.steamstatic.com/steam/apps/256671638/movie480.mp4","https://cdn.cloudflare.steamstatic.com/steam/apps/256720061/movie480.mp4","https://cdn.cloudflare.steamstatic.com/steam/apps/256814567/movie480.mp4","https://cdn.cloudflare.steamstatic.com/steam/apps/256705156/movie480.mp4","https://cdn.cloudflare.steamstatic.com/steam/apps/256801252/movie480.mp4","https://cdn.cloudflare.steamstatic.com/steam/apps/256757119/movie480.mp4"]
  
  var body: some View {
    // POPULAR
    VStack {
      Text("More Popular")
        .font(.title3)
        .foregroundStyle(.white)
        .bold()
        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
      
      ZStack {
        Button(action: {
          url = urlVideos[0]
          print("url: \(url)")
          isPlayerActive = true
        }) {
          VStack(spacing: 0) {
            Image("The Witcher 3")
              .resizable()
              .scaledToFill()
            
            Text("The Witcher 3")
              .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
              .background(Color("blue-gray"))
              .foregroundStyle(.white)
          }
        }
        
        Image(systemName: "play.circle.fill")
          .resizable()
          .foregroundStyle(.white)
          .frame(width: 42, height: 42)
      }.frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
        .padding(.bottom)
    }.navigationDestination(
      isPresented: $isPlayerActive,
      destination: {
        VideoPlayer(player: AVPlayer(url: URL(string: url)!))
          .frame(width: 400, height: 300)
      })
  }
}

#Preview {
  Home()
}
