//
//  RegisterView.swift
//  GameStream
//
//  Created by Victor Hugo on 26/03/24.
//

import SwiftUI

struct RegisterView: View {
  @State var email = ""
  @State var pwd = ""
  @State var repeatPwd = ""
  
  var body: some View {
    VStack(alignment: .center) {
      Text("Choose a profile picture")
        .foregroundStyle(.white)
        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
      
      Text("You can change it later")
        .foregroundStyle(.gray)
        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        .font(.footnote)
        .padding(.bottom, 30)
      
      Button(action: takePic, label: {
        ZStack {
          Image("profile-picture")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 100, height: 100)
          
          Circle()
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            .opacity(0.1)
          
          Image(systemName: "camera")
            .foregroundStyle(.white)
            .font(.largeTitle)
        }
      })
    }.padding(.bottom, 10)
    
    VStack(alignment:.leading) {
      // EMAIL
      Text("Email")
        .foregroundColor(Color("dark-cyan"))
      ZStack(alignment:.leading) {
        if email.isEmpty {
          Text(verbatim:"example@mail.com")
            .font(.caption)
            .foregroundColor(Color("light-gray"))
        }
        
        TextField("", text: $email)
          .foregroundStyle(.white)
      }
      Divider()
        .frame(height: 1)
        .background(Color("dark-cyan"))
        .padding(.bottom)
      
      // PASSWORD
      Text("Password")
        .foregroundColor(Color("dark-cyan"))
      ZStack(alignment:.leading) {
        if pwd.isEmpty {
          Text(verbatim:"Write your password")
            .font(.caption)
            .foregroundColor(Color("light-gray"))
        }
        
        SecureField("", text: $pwd)
          .foregroundStyle(.white)
      }
      Divider()
        .frame(height: 1)
        .background(Color("dark-cyan"))
        .padding(.bottom)
      
      // REPEAT PASSWORD
      Text("Repeat Password")
        .foregroundColor(Color("dark-cyan"))
      ZStack(alignment:.leading) {
        if pwd.isEmpty {
          Text(verbatim:"Write your password")
            .font(.caption)
            .foregroundColor(Color("light-gray"))
        }
        
        SecureField("", text: $repeatPwd)
          .foregroundStyle(.white)
      }
      Divider()
        .frame(height: 1)
        .background(Color("dark-cyan"))
        .padding(.bottom)
      
      // Button
      Button(action: register, label: {
        Text("Register")
          .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
          .foregroundColor(.white)
          .fontWeight(.bold)
          .frame(maxWidth: .infinity, alignment: .center)
          .padding()
          .overlay(RoundedRectangle(cornerRadius: 6.0).stroke(Color( "dark-cyan"), lineWidth: 1.0).shadow(color: .white, radius: 6))
          .padding(.vertical)
        
        
      })
      
      // SOCIAL LOGIN
      Text("Register with social media")
        .foregroundColor(Color("light-gray"))
        .padding(.horizontal)
        .padding(.top, 20.0)
        .frame(maxWidth: .infinity, alignment: .center)
      
      HStack {
        Button(action: {}, label: {
          Text("Facebook")
            .foregroundColor(.white)
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .padding(.horizontal, 20)
            .padding(.vertical, 10)
            .frame(maxWidth: .infinity)
        }).background(Color("dark-gray"))
          .frame(maxWidth: .infinity)
          .clipShape(RoundedRectangle(cornerRadius: 10.0))
        
        Spacer()
        
        Button(action: {}, label: {
          Text("Twitter")
            .foregroundColor(.white)
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .padding(.horizontal, 20)
            .padding(.vertical, 10)
            .frame(maxWidth: .infinity)
        }).background(Color("dark-gray"))
          .frame(maxWidth: .infinity)
          .clipShape(RoundedRectangle(cornerRadius: 10.0))
      }.frame(width: .infinity).padding()
      
    }.padding(.horizontal).frame(width: .infinity)
  }
}

func takePic() {
  print("PIC!")
}

func register() {
  print("Register")
}

#Preview {
  RegisterView()
}
