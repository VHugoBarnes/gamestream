//
//  LoginSignup.swift
//  GameStream
//
//  Created by Victor Hugo on 25/03/24.
//

import SwiftUI

struct LoginSignup: View {
  @State var tipoInicioSesion:Bool = true;
  
  var body: some View {
    VStack {
      HStack(alignment: .firstTextBaseline) {
        Button("INICIA SESIÓN"){
          tipoInicioSesion = true;
        }
          .foregroundColor(tipoInicioSesion ? .white : .gray)
          .fontWeight(.bold)
        
        Spacer()
        
        Button("REGÍSTRATE"){
          tipoInicioSesion = false;
        }
        .foregroundColor(tipoInicioSesion ? .gray : .white)
          .fontWeight(.bold)
      }.padding().padding(.horizontal)
      
      ScrollView {
        
        if(tipoInicioSesion == true) {
          Login()
        } else {
          Register()
        }
      }
    }
  }
}

#Preview {
    LoginSignup()
}
