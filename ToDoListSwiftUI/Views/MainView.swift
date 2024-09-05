//
//  MainView.swift
//  ToDoListSwiftUI
//
//  Created by Magdalena Popińska on 04/09/2024.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    

    
    var body: some View {
//        NavigationView {
        
            if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
                accountView
            } else {
                LoginView()
            }
            
//        }
        

    }
    
    @ViewBuilder
    var accountView: some View {
        TabView {
            ToDoListView(userId: viewModel.currentUserId ).tabItem {
                Label("Home", systemImage: "house")
            }
            ProfileView(userId: viewModel.currentUserId ).tabItem {
                Label("Profile", systemImage: "person.circle")
            }
        }
    }
}

#Preview {
    MainView()
}
