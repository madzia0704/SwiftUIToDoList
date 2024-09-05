//
//  ProfileView.swift
//  ToDoListSwiftUI
//
//  Created by Magdalena Popińska on 05/09/2024.
//

import SwiftUI

struct ProfileView: View {
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    var body: some View {
        NavigationView {
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("Profile")
        }
      
    }
}

#Preview {
    ProfileView(userId: "xx")
}
