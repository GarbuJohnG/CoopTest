//
//  ContentView.swift
//  Coop Test
//
//  Created by John Gachuhi on 23/05/2024.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var navigationStateManager = NavigationStateManager()
    
    
    var body: some View {
        
        NavigationView {
            VStack {
                if let currentView = navigationStateManager.viewStack.last {
                    currentView
                } else {
                    LoginView()
                }
            }
            .navigationBarHidden(true)
            .sheet(isPresented: $navigationStateManager.isSheetPresented, content: {
                navigationStateManager.sheetContent
            })
        }
        .environmentObject(navigationStateManager)
        
    }
}

#Preview {
    ContentView()
}
