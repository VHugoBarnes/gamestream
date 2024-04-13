//
//  Games.swift
//  GameStream
//
//  Created by Victor Hugo on 30/03/24.
//

import SwiftUI
import Kingfisher

struct Games: View {
  @ObservedObject var allVideoGames = ViewModel()
  
  @State var gameViewIsActive:Bool = false
  @State var url:String = ""
  @State var title:String = ""
  @State var studio:String = ""
  @State var calificacion:String = ""
  @State var anoPublicacion:String = ""
  @State var descripcion:String = ""
  @State var tags:[String] = []
  @State var imgsUrl:[String] = []
  
  let gridShape = [
    GridItem(.flexible()),
    GridItem(.flexible()),
  ]
  
  var body: some View {
    ZStack{
      Color("blue-gray").ignoresSafeArea()
      
      VStack{
        Text("Games")
          .font(.title2)
          .fontWeight(.bold)
          .foregroundStyle(.white)
          .padding(EdgeInsets(top: 16, leading: 0, bottom: 64, trailing: 0))
        
        ScrollView {
          LazyVGrid(columns: gridShape, spacing: 8) {
            ForEach(allVideoGames.gamesInfo, id: \.self) {
              juego in
              
              Button(action: {
                url = juego.videosUrls.mobile
                title = juego.title
                studio = juego.studio
                calificacion = juego.contentRaiting
                anoPublicacion = juego.publicationYear
                descripcion = juego.description
                tags = juego.tags
                imgsUrl = juego.galleryImages
              }) {
                KFImage(URL(string: juego.galleryImages[0])!)
                  .resizable()
                  .aspectRatio(contentMode: .fit)
                  .clipShape(RoundedRectangle.init(cornerRadius: 4))
                  .padding(.bottom, 12)
              }
            }
          }
        }
      }.padding(.horizontal, 6)
    }.onAppear(
        perform: {
          print(allVideoGames.gamesInfo[0])
        }
      )
  }
}

#Preview {
  Games()
}
