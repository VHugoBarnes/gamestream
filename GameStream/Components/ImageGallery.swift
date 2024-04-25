//
//  ImageGallery.swift
//  GameStream
//
//  Created by Victor Hugo on 24/04/24.
//

import SwiftUI
import Kingfisher

struct ImageGallery: View {
  var imgsUrl:[String] = []
  let gridShape = [
    GridItem(.flexible())
  ]
  
  var body: some View {
    VStack(alignment: .leading) {
      Text("Gallery")
        .foregroundStyle(.white)
        .font(.title)
        .padding(.leading)
      
      ScrollView(.horizontal) {
        LazyHGrid(rows: gridShape, spacing: 8) {
          ForEach(imgsUrl, id: \.self) {
            imgUrl in
            
            KFImage(URL(string: imgUrl))
              .resizable()
              .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
          }
        }
      }.frame(height: 180)
    }.frame(maxWidth: .infinity, alignment: .leading)
  }
}

#Preview {
  ImageGallery()
}
