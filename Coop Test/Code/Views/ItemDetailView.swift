//
//  ItemDetailView.swift
//  Coop Test
//
//  Created by John Gachuhi on 23/05/2024.
//

import SwiftUI

struct ItemDetailView: View {
    
    let item: ImagesResponseElement
    
    @EnvironmentObject var navigationStateManager: NavigationStateManager
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                Image(systemName: "chevron.left")
                    .frame(width: 50, height: 50)
                    .onTapGesture {
                        navigationStateManager.pop()
                    }
                
                Spacer()
                
                Text(item.title ?? "")
                    .font(.custom("Muli-Bold", size: 16))
                
                Spacer()
                
                Image(systemName: "xmark")
                    .frame(width: 50, height: 50)
                    .onTapGesture {
                        navigationStateManager.pop()
                    }
                
            }
            .frame(height: 50)
            
            Image("bg")
                .resizable()
                .frame(width: UIScreen.main.bounds.width - 60, height: UIScreen.main.bounds.width - 60)
                .cornerRadius(10)
            
            Text(item.body ?? "")
                .font(.custom("Muli", size: 16))
                .frame(width: UIScreen.main.bounds.width - 60)
            
            Spacer()
            
        }
        
    }
    
}
//
//#Preview {
//    ItemDetailView()
//}
