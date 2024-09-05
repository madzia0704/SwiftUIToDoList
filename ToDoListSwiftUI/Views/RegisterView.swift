//
//  RegisterView.swift
//  ToDoListSwiftUI
//
//  Created by Magdalena Popińska on 04/09/2024.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                // Header
                HeaderView(title: "Register",
                           subtitle: "Start organizing todo",
                           angle: -15,
                           background: Color.orange)
                Form{
                    TextField("Full name", text: $viewModel.name)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                    TextField("Email", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Register",
                             background: .green) {
                        viewModel.register()
                    }
                }
                .offset(y: -50)
                
                
                Spacer()
            }
        }
        
    }
}

#Preview {
    RegisterView()
}
