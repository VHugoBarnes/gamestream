//
//  Game.swift
//  GameStream
//
//  Created by Victor Hugo on 17/04/24.
//

import SwiftUI

struct Game: View {
  var url:String = ""
  var title:String = ""
  var studio:String = ""
  var calificacion:String = ""
  var anoPublicacion:String = ""
  var descripcion:String = ""
  var tags:[String] = []
  var imgsUrl:[String] = []
  
  var body: some View {
    ZStack {
      Color(red: 19/255, green: 30/255, blue: 53/255, opacity: 1.0).ignoresSafeArea()
      
      VStack {
        VideoHeader(url: url)
          .frame(height: 300)
        
        ScrollView {
          VideoInfo(title: title, studio: studio, calificacion: calificacion, anoPublicacion: anoPublicacion, description: descripcion, tags: tags)
            .padding(.bottom)
          
          ImageGallery(imgsUrl: imgsUrl)
        }.frame(maxWidth: .infinity)
      }
    }
  }
}

#Preview {
  Game(
    url: "ejemplo",
    title:"Sonic The Hedgehog",
    studio:"Sega",
    calificacion:"E+",
    anoPublicacion:"1991",
    descripcion:"Juego de Sega Genesis publicado en 1991 con más de 40 millones de copias vendidas actualmente",
    tags:["plataformas","mascota"],
    imgsUrl: [ "https://cdn.cloudflare.steamstatic.com/steam/apps/268910/ss_615455299355eaf552c638c7ea5b24a8b46e02dd.600x338.jpg","https://cdn.cloudflare.steamstatic.com/steam/apps/268910/ss_615455299355eaf552c638c7ea5b24a8b46e02dd.600x338.jpg","https://cdn.cloudflare.steamstatic.com/steam/apps/268910/ss_615455299355eaf552c638c7ea5b24a8b46e02dd.600x338.jpg"
    ]
  )
}
