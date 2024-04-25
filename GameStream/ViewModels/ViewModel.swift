//
//  ViewModel.swift
//  GameStream
//
//  Created by Victor Hugo on 03/04/24.
//

import Foundation

class ViewModel: ObservableObject {
  @Published var gamesInfo = [GameModel]()
  
  init() {
    let url = URL(string: "https://gamestreamapi.herokuapp.com/api/games")!
    var request = URLRequest(url: url)
    request.httpMethod = "GET"
    
    
    URLSession.shared.dataTask(with: request) { data, response, error in
      do{
        if let jsonData = data {
          
          let decodeData = try JSONDecoder().decode([GameModel].self, from: jsonData)
          
          DispatchQueue.main.async {
            self.gamesInfo.append(contentsOf: decodeData)
          }
        }
      }catch{
        print("Error \(error)")
      }
    }.resume()
  }
}
