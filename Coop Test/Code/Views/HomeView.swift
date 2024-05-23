//
//  HomeView.swift
//  Coop Test
//
//  Created by John Gachuhi on 23/05/2024.
//

import SwiftUI

struct HomeView: View {
    
    let username: String
    
    @EnvironmentObject var navigationStateManager: NavigationStateManager
    
    @StateObject private var viewModel = ItemsViewModel()
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                Image(systemName: "person")
                    .frame(width: 50, height: 50)
                    .onTapGesture {
                        // Profile
                    }
                
                Spacer()
                
                Text("Hello \(username)")
                    .font(.custom("Muli-Bold", size: 16))
                
                Spacer()
                
                Image(systemName: "square.and.arrow.up")
                    .frame(width: 50, height: 50)
                    .onTapGesture {
                        // Logout
                        navigationStateManager.popToRoot()
                    }
                
            }
            .frame(height: 50)
            
            
            ZStack {
                
                List(viewModel.items, id: \.id) { item in
                    
                    VStack(alignment: .leading) {
                        
                        Image("bg")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width - 60, height: UIScreen.main.bounds.width - 60)
                            .cornerRadius(10)
                        
                        Text(item.title ?? "")
                            .font(.custom("Muli-Bold", size: 20))
                            .padding()
                        
                        Text(item.body ?? "")
                            .font(.custom("Muli", size: 16))
                    }
                    .onTapGesture {
                        navigationStateManager.push(ItemDetailView(item: item))
                    }
                    
                }
                .onAppear{
                    
                    viewModel.getItems()
                    
                }
                
                if viewModel.isLoading {
                    
                    ProgressView("Loading...")
                    
                }
                
            }
            
            
            Spacer()
            
        }
        
    }
    
}

//#Preview {
//    HomeView()
//}
