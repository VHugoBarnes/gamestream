//
//  VideoHeader.swift
//  GameStream
//
//  Created by Victor Hugo on 23/04/24.
//

import SwiftUI
import AVKit

struct VideoHeader: View {
  var url: String = "";
  
  var body: some View {
    VideoPlayer(player: AVPlayer(url: URL(string: url)!)).ignoresSafeArea()
  }
}

#Preview {
  VideoHeader()
}
