//
//  VideoInfo.swift
//  GameStream
//
//  Created by Victor Hugo on 24/04/24.
//

import SwiftUI

struct VideoInfo: View {
  var title:String = ""
  var studio:String = ""
  var calificacion:String = ""
  var anoPublicacion:String = ""
  var description:String = ""
  var tags:[String] = []
  
  var body: some View {
    VStack(alignment:.leading) {
      Text("\(title)")
        .foregroundStyle(.white)
        .font(.largeTitle)
        .padding(.leading)
      
      HStack{
        Text("\(studio)")
          .foregroundColor(.white)
          .font(.subheadline)
          .padding(.top,5)
          .padding(.leading)
        
        Text("\(calificacion)")
          .foregroundColor(.white)
          .font(.subheadline)
          .padding(.top,5)
        
        Text("\(anoPublicacion)")
          .foregroundColor(.white)
          .font(.subheadline)
          .padding(.top,5)
      }
      
      Text("\(description)")
        .foregroundColor(.white)
        .font(.subheadline)
        .padding(.top,5)
        .padding(.leading)
      
      HStack{
        ForEach(tags, id:\.self){
          tag in
          
          Text("#\(tag)")
            .foregroundColor(.white)
            .font(.subheadline)
            .padding(.top,4)
            .padding(.leading)
        }
      }
    }.frame(maxWidth: .infinity, alignment: .leading)
  }
}

#Preview {
  VideoInfo()
}
