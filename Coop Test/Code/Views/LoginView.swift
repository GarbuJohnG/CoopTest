//
//  LoginView.swift
//  Coop Test
//
//  Created by John Gachuhi on 23/05/2024.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var navigationStateManager: NavigationStateManager
    
    @State private var searchText: String = ""
    
    var body: some View {
        
        VStack {
            
            // MARK: - Branding Images
            
            ZStack {
                
                Image("bg")
                    .resizable()
                
                Color("SecoColor")
                    .opacity(0.39)
                
                Image("logo")
                    .resizable()
                    .frame(width: 104, height: 84)
                
                VStack {
                    
                    Spacer()
                    
                    Text("Welcome to a New Banking Experience")
                        .font(.custom("Muli-Bold", size: 16))
                        .foregroundColor(.white)
                        .padding(.bottom, 5)
                    
                    Text("Dream it. Achieve it.")
                        .font(.custom("Muli-Bold", size: 16))
                        .foregroundColor(.white)
                        .padding(.bottom, 20)
                    
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width * 0.9)
            .ignoresSafeArea()
            
            Text("Already registered on the new platform?")
                .font(.custom("Muli-Bold", size: 16))
                .foregroundColor(.black)
            
            Text("Use your credentials to log in")
                .font(.custom("Muli", size: 16))
                .padding()
                .foregroundColor(.black)
            
            VStack(alignment: .leading, spacing: 5) {
                
                Text("Username")
                    .font(.custom("Muli-Bold", size: 16))
                    .foregroundColor(.black)
                    
                TextField("Username", text: $searchText)
                
                Rectangle()
                    .frame(height: 1)
                
            }
            .frame(width: UIScreen.main.bounds.width - 40)
            .padding(.bottom, 20)
            
            VStack(alignment: .leading, spacing: 5) {
                
                Text("Password")
                    .font(.custom("Muli-Bold", size: 16))
                    .foregroundColor(.black)
                    
                TextField("Password", text: $searchText)
                   
                Rectangle()
                    .frame(height: 1)
                
            }
            .frame(width: UIScreen.main.bounds.width - 40)
            
            Spacer()
            
            // MARK: - Button to Proceed
            
            Button(action: {
                navigationStateManager.push(HomeView())
            }) {
                
                Text("Log In")
                    .font(.custom("Muli-Bold", size: 16))
                    .padding()
                    .foregroundColor(.white)
                
            }
            .frame(maxWidth: .infinity, maxHeight: 50)
            .background(.accent)
            .cornerRadius(10)
            .padding()
            
        }
        
    }
    
}

#Preview {
    LoginView()
}