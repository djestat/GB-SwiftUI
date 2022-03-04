//
//  LoginView.swift
//  GB-SwiftUI
//
//  Created by Igor on 04.03.2022.
//

import SwiftUI

struct LoginView: View {
    
    @State private var login: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ZStack {
            GeometryReader { proxy in
                /*
                Image("VKlogo")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .scaledToFill()
                    .frame(width: proxy.size.width,
                           height: proxy.size.height)
                */
                LinearGradient(colors:
                                [.white.opacity(0.85),
                                 .blue.opacity(0.15)],
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)

            }
            
            VStack {
                Image("VKlogo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200,
                           height: 40)
                    .padding(.all, 40)
                
                VStack {
                    HStack {
                        Text("Login:")
                        Spacer()
                        TextField("Login", text: $login)
                            .cornerRadius(8)
                            .frame(maxWidth: 150)
                    }
                    
                    HStack {
                        Text("Password:")
                        Spacer()
                        SecureField("Password", text: $password)
                            .cornerRadius(8)
                            .frame(maxWidth: 150)
                    }
                    
                    Button( action: {
                        didTapEnterButton()
                    }) {
                        Text("SIGN IN")
                            .font(.system(size: 18, weight: .semibold,
                                          design: .rounded))
                            .foregroundColor(.white)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .fill()
                                    //.tint(.blue)
                                    .shadow(color: .white.opacity(0.35),
                                            radius: 8, x: 0, y: 0)
                            )
                            .padding(.horizontal, 0)
                    }
                    .disabled(login.isEmpty || password.isEmpty)
                    .padding(.top, 32)
                    
                }
                .padding(.horizontal, 20)
                .textFieldStyle(.roundedBorder)
                .frame(maxWidth: 350)
                
                
            }
        }
    }
    
    private func didTapEnterButton() {
        login = ""
        password = ""
    }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
